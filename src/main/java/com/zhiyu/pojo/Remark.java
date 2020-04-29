package com.zhiyu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Remark implements Serializable {
    private int rId;
    private String rContext;
    private String userName;
    private int sId;
}
