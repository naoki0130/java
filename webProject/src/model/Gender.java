package model;

public enum Gender {
	Female("女"), Male("男");

	private String text;

	private Gender(String text) {
		// TODO 自動生成されたコンストラクター・スタブ
		this.text = text;
	}

	@Override
	public String toString() {
		// TODO 自動生成されたメソッド・スタブ
		return this.text;
	}
}
