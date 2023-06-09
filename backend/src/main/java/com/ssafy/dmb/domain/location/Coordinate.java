package com.ssafy.dmb.domain.location;

import lombok.Getter;

import javax.persistence.Embeddable;

@Embeddable
@Getter
public class Coordinate {

    private String latitude;

    private String longitude;

    protected Coordinate(){
    }

    public Coordinate(String latitude, String longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
    }



}
