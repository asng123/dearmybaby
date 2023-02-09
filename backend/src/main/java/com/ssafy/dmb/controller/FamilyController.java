package com.ssafy.dmb.controller;

import com.ssafy.dmb.dto.user.FamilyDto;
import com.ssafy.dmb.repository.FamilyRepository;
import com.ssafy.dmb.service.FamilyService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/family")
@RequiredArgsConstructor
public class FamilyController {

    private final FamilyService familyService;
    private final FamilyRepository familyRepository;

    @PostMapping("/new")
    public ResponseEntity<FamilyDto.familyResponse> createFamily(@RequestBody FamilyDto.familyRequest request) {
        return ResponseEntity.status(HttpStatus.OK).body(familyService.createFamily(request));
    }

    @GetMapping("/invitation/{familyId}")
    public ResponseEntity<String> getInvitationCode(@PathVariable("familyId") Long familyId) {
        return ResponseEntity.status(HttpStatus.OK).body(familyService.getInvitationCode(familyId));
    }
    @PostMapping("/join")
    public ResponseEntity<FamilyDto.familyResponse> joinFamily(@RequestParam("invitationCode") String invitationCode
            , @RequestParam("memberId") String memberId) {
        return ResponseEntity.status(HttpStatus.OK).body(familyService.joinFamily(invitationCode, memberId));
    }

    @GetMapping("/detail/{familyId}")
    @ResponseBody
    public ResponseEntity<FamilyDto.FamilyUserList> getFamilyDetail(@PathVariable("familyId") Long familyId) {
        return ResponseEntity.status(HttpStatus.OK).body(familyService.getFamilyDetail(familyId));
    }
}
