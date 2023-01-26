package com.dsw.business.models.views;

public class ejemplo1ViewModel {

	private String Direccion;
	private int Num;
	private int Cp;
	private String Municipio;
	
	public ejemplo1ViewModel(String _Direccion, int _Num, int _Cp, String _Municipio) {
		this.Direccion = _Direccion;
		this.Num = _Num;
		this.Cp = _Cp;
		this.Municipio = _Municipio;
	}
	
	public String GetDireccion() {
		return this.Direccion;
	}
	
	public int GetNum() {
		return this.Num;
	}
	
	public int GetCp() {
		return this.Cp;
	}
	
	public String GetMunicipio() {
		return this.Municipio;
	}
	
}
