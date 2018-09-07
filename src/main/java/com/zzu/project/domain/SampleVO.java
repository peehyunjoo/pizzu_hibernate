package com.zzu.project.domain;
import lombok.Data;

//@Getter, @Setter, @RequiredArgsConstructor, @ToString, @EqualsAndHashCode을 한꺼번에 설정해주는 어노테이션
@Data
public class SampleVO {
	
	private String val1;
	private String val2;
	private String val3;
}
