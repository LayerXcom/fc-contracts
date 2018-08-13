pragma solidity ^0.4.22;

import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

/** @title Manage fact check workflow and its reward for contributors.
 */
contract Factchain is Ownable {
    // Contract owner
    address owner;

    // Approved fact checker.
    mapping(address => bool) factCheckers;

    // Submitted URL objects.
    URL[] urls;

    struct URL{
        bytes32 urlHash;
        bool finished;
    }

    constructor() public {
        owner = msg.sender;
    }


    /** @dev add fact checker to this contract. OwnerOnly.
      * @param checker Fact checker candidate address.
     */
    function addFactchecker(address checker) public pure {
        
    }

    /** @dev remove fact checker from this contract. OwnerOnly.
      * @param checker Fact checker candidate address.
     */
    function deleteFactchecker(address checker) public pure {
        
    }

    /** @dev Record suspicious url to factchain contract.
      * @param _urlHash Hashed URL of suspicious page. This should be based on an canonical url.
      */
    function submitURL(bytes32 _urlHash) public pure {

    }

    /** @dev Vote for specific
      * @param _id URL id in this contract.
      * @param _isFake True if a user vote that this url contains fake.
      */
    function submitVote(uint _id, bool _isFake) public pure {

    }

    /** @dev This function is made for recording fact checkers contribution.
      * @param _id URL id in this contract.
      * @param _urlHash hashed URL of Factcheck proposal.
      */
    function submitFactcheck(uint _id, bytes32 _urlHash) public pure {

    }

    /** @dev Check URL finished status.
      * @param _id ID of the url.
     */
    function checkURLFinished(uint _id) public view returns (bool _finished){
        return false;
    }


    /** @dev Used for fetch an id for the url.
      * @param _urlHash Hashed url.
     */
    function urlID(bytes32 _urlHash) public view returns (uint _id) {
        return 0;
    }
}
