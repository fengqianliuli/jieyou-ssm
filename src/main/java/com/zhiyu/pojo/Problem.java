package com.zhiyu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Problem implements Serializable {
    private int pId;
    private String pTitle;
    private String pContext;
    private String userName;
}
