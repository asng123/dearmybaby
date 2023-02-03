package com.ssafy.dmb.dto.recommend;

import com.ssafy.dmb.domain.location.Tour;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
@AllArgsConstructor
public class TourDetailResponseDto {
    // 관광지 명
    private String tourName;

    // 관광지 카테고리
    private String tourCategory;

    // 관광지 주소
    private String tourAddress;

    // 관광지 위도
    private String tourLatitude;

    // 관광지 경도
    private String tourLongitude;

    // 관광지 문의 전화번호
    private String tourPhoneNumber;

    // 관광지 개요
    private String tourOutline;

    // 관광지 휴무일
    private String tourClosedDay;

    // 관광지 이용시간
    private String tourOpeningHours;

    // 관광지 주차가능여보
    private String tourAvlParking;

    // 관광지 유모차 대여 여보
    private String tourAvlStrollerRental;

    // 관광지 img
    private String tourImgUrl;

    private Long regionId;

    public TourDetailResponseDto(Tour tour) {
        this.regionId = tour.getRegion().getId();
        this.tourName = tour.getTourName();
        this.tourCategory = tour.getTourCategory();
        this.tourAddress = tour.getTourAddress();
        this.tourLatitude = tour.getTourLatitude();
        this.tourLongitude = tour.getTourLongitude();
        this.tourPhoneNumber = tour.getTourPhoneNumber();
        this.tourOutline = tour.getTourOutline();
        this.tourClosedDay = tour.getTourClosedDay();
        this.tourOpeningHours = tour.getTourOpeningHours();
        this.tourAvlParking = tour.getTourAvlParking();
        this.tourAvlStrollerRental = tour.getTourAvlStrollerRental();
        this.tourImgUrl = tour.getTourImgUrl();
    }
}
