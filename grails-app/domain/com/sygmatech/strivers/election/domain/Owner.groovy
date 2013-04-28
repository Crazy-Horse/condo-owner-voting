package com.sygmatech.strivers.election.domain

class Owner {

    String firstName;
	String lastName;
	String unit;
	BigDecimal shares;
	Boolean resident;
	Boolean arrears;
	Boolean proxy;
	
	Owner(String first, String last, String unitIn, String sharesIn, String arrearsIn) {
		firstName = first
		lastName = last
		unit = unitIn
		shares = new BigDecimal(sharesIn)
		resident = true
		arrears = Boolean.valueOf(arrearsIn)
		proxy = false
	} 
	
	String toString() {
		"${firstName} ${lastName}"
	}

	static hasMany = [votes : Candidate]
	
    static constraints = {
		firstName(blank: false)
		lastName(blank: false)
		unit(blank: false)
		shares(blank: false)
		votes validator: { val -> if (val != null)
			return val.size() >= 0 && val.size() <= 6	
		}	
	}
}
