package com.sygmatech.strivers.election.domain

class Candidate {

    String firstName;
	String lastName;
	Boolean primaryCandidate;
	
	String toString() {
		"${firstName} ${lastName}"
	}
	
	static belongsTo = Owner
	static hasMany = [owners : Owner]
	
    static constraints = {
		firstName(blank: false)
		lastName(blank: false)
		//owner(nullable: true)
    }
}
