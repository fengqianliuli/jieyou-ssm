package com.zhiyu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User implements Serializable {
    private String userName;
    private String userPassword;
    private String userGender;
    private String userPhone;
    private String userMoney;
    private String userCredit;

    public User(String userName) {
        this.userName = userName;
    }
}
