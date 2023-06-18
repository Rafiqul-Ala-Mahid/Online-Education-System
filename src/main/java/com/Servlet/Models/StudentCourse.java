package com.Servlet.Models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="studentcourse")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class StudentCourse {
    @Id
    private String id;

    @Column
    private  String courseId;

    @Column
    private String studentId;
}
