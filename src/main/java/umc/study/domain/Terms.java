package umc.study.domain;

import jakarta.persistence.*;
import lombok.*;
import umc.study.domain.common.BaseEntity;
import umc.study.domain.mapping.MemberTerms;

import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Builder
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
public class Terms extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "terms_id")
    private Long id;

    @Column(length = 10)
    private String title;

    @Column(columnDefinition = "TEXT")
    private String body;

    @Column(name = "is_essential", columnDefinition = "TINYINT(1)")
    private Boolean isEssential;

    @OneToMany(mappedBy = "terms", cascade = CascadeType.ALL)
    @Builder.Default
    private List<MemberTerms> memberTermsList = new ArrayList<>();

}