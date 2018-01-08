pragma solidity ^0.4.1;

contract Election {

    struct Candidate {
        address addr;
        bytes32 name;
        bytes32 aadhar;
        
    }

    mapping (address => uint256) public votesreceived;

    bytes32[] public candidatelist;   
    /* This is the constructor
    */
    function Election(bytes32[] candidateNames) {
        candidatelist = candidateNames;
    }

    function validateCandidate(bytes32 candidate) returns (bool) {
        for (uint32 i = 0;i<candidatelist.length;i++) { 
            if (candidatelist[i] == candidate) {
                return true;
            }
            return false;
        }
    }

    
}