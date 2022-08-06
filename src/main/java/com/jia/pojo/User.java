package com.jia.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * User:侠客
 * Date:2022/2/9 17:50
 * Description:
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int id;
    private String userName;
    private String password;
    private String email;
    private String type;
}
