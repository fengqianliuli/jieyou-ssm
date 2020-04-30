package com.zhiyu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Answer implements Serializable {
    private int aId;
    private String aContext;
    private String userName;
    private int pId;
}
