package com.ssafy.dmb.controller;

import com.ssafy.dmb.dto.BabyDto;
import com.ssafy.dmb.repository.BabyRepository;
import com.ssafy.dmb.service.BabyServiceImpl;
import io.swagger.annotations.ApiOperation;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/baby")
@Tag(name = "Baby", description = "baby API 입니다.")
@RequiredArgsConstructor
public class BabyController {

    private final BabyRepository babyRepository;

    private final BabyServiceImpl babyService;

    @GetMapping("/{babyId}")
    @ApiOperation(value = "아이 정보 조회", notes = "<strong>아이 ID </strong>를 아이의 정보를 조회 한다.")
    @ResponseBody
    public ResponseEntity<BabyDto.Response> getBabyInfo(@PathVariable("babyId") Long babyId) {
        return ResponseEntity.status(HttpStatus.OK).body(babyService.getBabyInfo(babyId));
    }

    @GetMapping("/family/{familyId}")
    @ApiOperation(value = "아이 리스트 조회", notes = "<strong>가족 ID</strong>를 통해 아이 리스트를 전체 조회한다.")
    @ResponseBody
    public ResponseEntity<List<BabyDto.Response>> getBabyList(@PathVariable("familyId") Long familyId) {
        return ResponseEntity.status(HttpStatus.OK).body(babyService.getBabyList(familyId));
    }

    @PostMapping("/new")
    @ApiOperation(value = "아이 정보 등록", notes = "아이 정보를 생성한다.")
    @ResponseBody
    public ResponseEntity<BabyDto.Response> createBabyInfo(@RequestBody BabyDto.Request request) {

        return ResponseEntity.status(HttpStatus.OK).body(babyService.createBabyInfo(request));
    }

    @PutMapping("/{babyId}")
    @ApiOperation(value = "아이 정보 수정", notes = "<strong>babyId</strong>를 통해 아이 정보를 수정한다.")
    @ResponseBody
    public ResponseEntity<BabyDto.Response> updateBabyInfo(@RequestBody BabyDto.Request request,
                                                           @PathVariable("babyId") Long babyId) {

        return ResponseEntity.status(HttpStatus.OK).body(babyService.updateBabyInfo(request, babyId));
    }
    @ApiOperation(value = "아이 정보 삭제", notes = "<strong>babyId</strong>를 통해 아이 정보를 삭제한다.")
    @DeleteMapping("/{babyId}")
    public void deleteBaby(@PathVariable("babyId") Long babyId) {
        babyService.deleteBaby(babyId);
    }
}
