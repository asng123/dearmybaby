package com.ssafy.dmb.controller;

import com.ssafy.dmb.dto.day.DayDto;
import com.ssafy.dmb.dto.day.PlaceResponseDto;
import com.ssafy.dmb.service.DayService;
import io.swagger.annotations.ApiOperation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@RequiredArgsConstructor
@RestController
@Tag(name = "Day", description = "day API 입니다.")
@RequestMapping("/api/day")
public class DayController {
    private final DayService dayService;

    @ApiOperation(value = "여행일수 저장", notes = "여행 일수를 저장한다.")
    @PostMapping()
    public String saveDay(@RequestBody DayDto dayDto) throws IOException {

        dayService.saveDay(dayDto);
        return "ok";
    }
    @ApiOperation(value = "데이별 장소리스트 조회", notes = "<strong> dayId </strong>를 통해 장소 리스트를 조회한다.")
    @GetMapping("/place")
    public List<PlaceResponseDto> getDayPlaceList(@RequestParam("dayId") Long dayId) throws IOException {
        return dayService.getDayPlaceList(dayId);
    }

}
