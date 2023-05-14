package com.Servlet.Models;

        import jakarta.persistence.Column;
        import jakarta.persistence.Entity;
        import jakarta.persistence.Id;
        import jakarta.persistence.Table;
        import lombok.*;



@Entity
@Table(name="course")
@Data
@AllArgsConstructor
@NoArgsConstructor


public class Course{

    @Id
    private String userId;

    @Column
    private  String title;

    @Column
    private String summary;

    @Column
    private String teacher;

}
