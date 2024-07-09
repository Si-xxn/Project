package pr_V1.search;

public class VarietyDTO extends ShowDTO {
	// showDTO <- 부모객체 상속받음
	
	public VarietyDTO() {
		// 기본생성자
	}
	
	// 부모 생성자 상속
	public VarietyDTO(String program, String category, String title, String director, String actor, String contents) {
		super(program, category, title, director, actor, contents);
		
	}
	
	@Override
	   public String toString() {
	      return super.toString();
	   }
	
	
	

}
