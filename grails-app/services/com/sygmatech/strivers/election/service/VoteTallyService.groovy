package com.sygmatech.strivers.election.service

import com.sygmatech.strivers.election.domain.Owner
import com.sygmatech.strivers.election.domain.Candidate

class VoteTallyService {

	
    Map tallyVotes() {
		//def Map<Long, Double> voteTotal = new HashMap<Long, Double>()
		def voteTotal = [:]
		def ownerInstanceList = Owner.getAll()
		
		for (Owner owner : ownerInstanceList) {
			for (Candidate candidate : owner.votes) {
				def candidateName = candidate.firstName + " " + candidate.lastName
				if (voteTotal.containsKey(candidateName)) {
					def voteList = voteTotal.get(candidateName)	
					def voteInformationList = []
					//System.out.println("Owner shares: " + owner.shares + " from "+ owner.firstName + " " + owner.lastName )
					BigDecimal candidatePercentTotal = voteList.get(1) 
					//voteList.remove(1)
					candidatePercentTotal += owner.shares
					//voteList.add(1, candidatePercentTotal)
					def candidateVoteTotal = voteList.get(0)
					candidateVoteTotal += 1
//					voteList.remove(0)
//					voteList.add(0, candidateVoteTotal)
					voteInformationList.add(candidateVoteTotal)
					voteInformationList.add(candidatePercentTotal)
					voteTotal.put(candidateName, voteInformationList)
				} else {
					def voteInfoList = []
					//voteInfoList.add(candidate.firstName + " " + candidate.lastName) //adding candidate name
					voteInfoList.add(1) //adding number of votes.  Using 1 to initialize count
					voteInfoList.add(owner.shares) //adding vote percentage. 
					voteTotal.put(candidateName, voteInfoList)
				}
				//System.out.println("vote total size: " + voteTotal.get(candidate.id).size())
				System.out.println("Candidate: " + candidateName + " has " + voteTotal.get(candidateName).get(0) +
					" total votes and " + voteTotal.get(candidateName).get(1) + " total % votes")
			}
		}
		return voteTotal
    }
}
