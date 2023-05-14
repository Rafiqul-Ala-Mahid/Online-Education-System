package com.Servlet.Models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;



@Entity
@Table(name="user")
@Data
@AllArgsConstructor
@NoArgsConstructor


public class User{
    public enum Role{
        STUDENT,
        TEACHER,
        ADMIN
    }
    @Id
    private String userId;

    @Column
    private  String name;

    @Column(unique = true)
    private String email;

    @Column
    private  String password;

    @Column(unique = true)
    private  String username;

    @Column
    private Role role;
}

