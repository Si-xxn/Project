package pr_V1.search;


public class ShowDTO {
	// 필드
	

	private String title;	 // 프로그램 제목
	private String contents; // 내용설명
	private String program;  // 프로그램 종류 -> 티빙, 넷플릭스, 디즈니
	private String category; // 장르종류 -> 로맨스, 액션 등등
	private String director; // 감독, 연출 등
	private String actor;	 // 출연진, 배우
	private int no;

	// 생성자
	public ShowDTO() {
		// 기본생성자
	}

	public ShowDTO(String program, String category, String title, String director, String actor, String contents) {
		// 리스트에 미리 값 추가 시 사용할 생성자
		this.program = program;
		this.category = category;
		this.title = title;
		this.director = director;
		this.actor = actor;
		this.contents = contents;

	}

	

	public void showList() { // 간단한 정보 리스트 출력 메서드
		int i=1; // 번호 부여 용도
		System.out.println(i+"[" + getProgram() + "]" + " | " + getTitle());

	}

	public void showInfo() { // 상세정보 출력 메서드 ( 작품 설명 추가해야함. )
		System.out.println("[" + getProgram() + "]" + " | " + getTitle());
		System.out.println(getCategory());
		System.out.println("감독:" + getDirector());
		System.out.println("출연진:" + getActor());
		System.out.println("---------------------------------------");

	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	// 메서드 -> getter, setter
	public String getTitle() {
		return title;
	}

	public String getContents() {
		return contents;
	}

	public String getProgram() {
		return program;
	}

	public String getDirector() {
		return director;
	}

	public String getActor() {
		return actor;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public void setPrograme(String program) {
		this.program = program;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	   public String toString() {
	      return "[" + program + "]" + title + " | " + category + "\n감독:" + director + "\n출연진:" + actor + "\n" + contents;
	   }
	
	

}