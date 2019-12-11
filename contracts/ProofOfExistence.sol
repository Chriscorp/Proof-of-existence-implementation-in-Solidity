pragma solidity ^0.5.0;

contract ProofOfExistence {
    mapping (bytes32 => bool) private proofs;

    function notarize(string memory document) public {
        bytes32 proof = proofFor(document);
        storeProof(proof);
    }

    function checkDocument(string memory document) public view returns (bool) {
        bytes32 proof = proofFor(document);
        return proofExists(proof);
    }

    function storeProof(bytes32 proof) private {
        proofs[proof] = true;
    }

    function proofFor(string memory document) private pure returns (bytes32) {
        return sha256(bytes(document));
    }

    function proofExists(bytes32 proof) private view returns (bool) {
        return proofs[proof];
    }
}