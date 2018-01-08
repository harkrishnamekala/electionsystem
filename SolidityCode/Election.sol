pragma solidity ^0.4.19;

contract Election {

    struct candidate {
        address addr;
        bytes32 name;
        bytes32 aadhar;
        
    }

    mapping (address => uint256) public votesreceived;

    bytes32[] public candidatelist;   

    function Election(bytes32[] candidateNames) {
        candidatelist = candidateNames;
    }

    function ValidateCandidate(bytes32 candidate) returns (bool) {
        for(uint32 i=0;i<candidatelist.length;i++) { 
            if (candidatelist[i] == candidate) {
                return true;
            }
            return false;
        }
    }

    function
}