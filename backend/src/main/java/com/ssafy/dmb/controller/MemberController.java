package com.ssafy.dmb.controller;

import com.ssafy.dmb.jwt.JwtTokenProvider;
import com.ssafy.dmb.dto.login.MemberLoginRequestDto;
import com.ssafy.dmb.dto.login.TokenInfo;
import com.ssafy.dmb.dto.user.MemberDto;
import com.ssafy.dmb.dto.user.MemberResponseDto;
import com.ssafy.dmb.service.MemberService;
import com.ssafy.dmb.service.S3Service;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RequiredArgsConstructor
@RestController
@Tag(name = "Member", description = "Member API 입니다.")
@Transactional
@RequestMapping("/api/member")
public class MemberController {

    private final S3Service s3Service;

    private final MemberService memberService;

    private final JwtTokenProvider jwtTokenProvider;

    @Value("${spring.environment}")
    private String environment;
    @PostMapping()
    @Operation(summary = "회원가입", description = "<strong> Id, Email, Img, Password, Name </strong>을 통해 회원가입한다.")
    public String saveMember(@RequestPart MultipartFile multipartFile
            , @RequestPart MemberDto memberDto) throws IOException {

        String url = s3Service.upload(multipartFile, "dearmybucket", "dmb");

        memberService.saveMember(url, memberDto);
        return url;
    }

    @GetMapping("/check/{memberId}")
    @Operation(summary = "아이디 중복 체크", description = "<strong> memberId </strong>를 통해 Id 중복체크한다.")
    public boolean checkMemberId(@PathVariable String memberId) throws IOException {
        return memberService.checkMemberId(memberId);
    }

    @GetMapping("/detail")
    @Operation(summary = "회원 정보 조회", description = "<strong> memberID </strong>를 통해 회원 정보를 조회한다.")
    public ResponseEntity<MemberResponseDto> getPlanDetail(@RequestHeader("Access-Token") String accessToken) {
        String ATK = accessToken.substring(7);
        System.out.println("ATK: " + ATK);
        Authentication authentication = jwtTokenProvider.getAuthentication(ATK);
        String memberId = authentication.getName();
//        String memberId = Jwts.parser().setSigningKey(secretKey).parseClaimsJws(accessToken).getBody().getSubject();
        return ResponseEntity.status(HttpStatus.OK).body(memberService.getMemberDetail(memberId));
    }

    @DeleteMapping("/{memberId}")
    @Operation(summary = "회원 탈퇴", description = "<strong> memberID </strong>를 통해 회원 탈퇴한다.")
    public void deleteMember(@PathVariable("memberId") String memberId, @RequestHeader("Access-Token") String accessToken) {
        String ATK = accessToken.substring(7);
        Authentication authentication = jwtTokenProvider.getAuthentication(ATK);
        String tokenMemberId = authentication.getName();
        if(tokenMemberId.equals(memberId)){
            memberService.deleteMember(memberId);
        }else{
            throw new RuntimeException("다른사람이 탈퇴하려고한다");
        }
    }

    @PutMapping()
    @Operation(summary = "회원 정보 수정", description = "<strong> memberDto</strong>를 통해 회원정보를 수정한다.")
    public void changeMemberInfo(@RequestBody MemberDto memberDto) throws IOException {
        memberService.changeMemberInfo(memberDto);
    }

    @PostMapping("/login")
    public String memberLogin(@RequestBody MemberLoginRequestDto memberLoginRequestDto
            , HttpServletResponse httpServletResponse) throws IOException {
        String memberId = memberLoginRequestDto.getMemberId();
        String password = memberLoginRequestDto.getPassword();
        TokenInfo tokenInfo = memberService.login(memberId, password);

        String accessToken = tokenInfo.getGrantType() + " " +tokenInfo.getAccessToken(); // 얘는 헤더에?
        String refreshToken = tokenInfo.getRefreshToken(); // 얘는 쿠키로 and DB저장

        Cookie cookie = new Cookie("refresh-token", refreshToken);
        // expires in 7 days
        cookie.setMaxAge(7 * 86400000);

        // optional properties
        if(environment != "local")
            cookie.setSecure(true);
        cookie.setHttpOnly(true);
        cookie.setPath("/");

        // add cookie to response
        httpServletResponse.addCookie(cookie);

        memberService.changeMemberRefreshToken(memberId, refreshToken);

        return accessToken;
    }

    @GetMapping("/token")
    @Operation(summary = "access token 재발급", description = "<strong> refresh token </strong>을 통해 access token 재발급.")
    public String getMemberToken(@CookieValue("refresh-token") Cookie cookie) throws IOException {
        if(cookie != null) {
            String refreshToken = cookie.getValue();
            System.out.println("refreshToken : "+ refreshToken);
            if(jwtTokenProvider.validateToken(refreshToken)) {
                return memberService.getMemberToken(refreshToken);
            }else{
                throw new RuntimeException("refreshToken의 유효기간이 만료되었습니다. 다시 login 부탁드립니다.");
            }
        } else {
            throw new RuntimeException("refreshToken의 유효기간이 만료되었습니다. 다시 login 부탁드립니다.");
        }
    }

    @PutMapping("/logout")
    @Operation(summary = "로그아웃", description = "<strong> memberDto</strong>를 통해 회원정보를 수정한다.")
    public void memberLogout(@RequestHeader("Access-Token") String accessToken) throws IOException {
        String ATK = accessToken.substring(7);
        System.out.println("ATK : "+ATK);
        if(jwtTokenProvider.validateToken(ATK)){
            Authentication authentication = jwtTokenProvider.getAuthentication(ATK);
            String MemberId = authentication.getName();
            memberService.deleteMemberToken(MemberId);
        }else{
            throw new RuntimeException("access토큰 만료로 인한 권한부족");
        }
    }
}
