package com.ssafy.dmb.dto.mediaconverter;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter @Setter
public class AwsMediaConvertForm {
    private String id;
    private String region;
    private AwsMediaConvertDetailForm detail;
}
