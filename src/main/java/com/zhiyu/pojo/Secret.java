package com.zhiyu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Secret implements Serializable {
    private int sId;
    private String sTitle;
    private String sContext;
    private Date sTime;
    private String sType;
    private String userName;
}
