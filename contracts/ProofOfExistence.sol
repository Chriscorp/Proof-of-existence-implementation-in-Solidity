pragma solidity ^0.5.0;

contract ProofOfExistence {
    mapping (bytes32 => bool) private proofs;

    /// notarizes a document and stores its proof/hash in the contract's state
    function notarize(string memory document) public {
        bytes32 proof = proofFor(document);
        storeProof(proof);
    }

    /// checks if a document was notarized before and has a proof in the contract's state
    function checkDocument(string memory document) public view returns (bool) {
        bytes32 proof = proofFor(document);
        return proofExists(proof);
    }

    /// stores the proof in the contract's state
    function storeProof(bytes32 proof) private {
        proofs[proof] = true;
    }

    /// generates a proof/hash of the passed document and returns it
    function proofFor(string memory document) private pure returns (bytes32) {
        return sha256(bytes(document));
    }

    /// checks if a proof exists in the contract's state
    function proofExists(bytes32 proof) private view returns (bool) {
        return proofs[proof];
    }
}