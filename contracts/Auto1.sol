/*  CRUD functions for Auto creation etc.*/

pragma solidity ^0.4.19;

contract Auto {

//array that maintains registration Id's of all autos
bytes32[] Reg;    

//Struct contains attributes of each auto
struct attributes{
bytes32 make;
bytes32 model;
bytes32 colour;
bytes32 owner;
bool scrapped;
bytes32 leaseid;
}

struct participants {
bytes32	regulator;
bytes32	manufactrer;
bytes32	dealership;
bytes32	lease_company;
bytes32	leasee;
bytes32	scrap_merchant;
}

// List that maps each auto reg id with its features & participants
mapping (bytes32=> attributes) Autolist;
mapping (bytes32=>participants) Partylist;

function register_new_auto (bytes32 regid)  public returns (bool) {
uint index = Reg.length ;
Reg [index] = regid;
return true; 
}

function get_auto (bytes32 regid) public constant returns (attributes) {
return Autolist[regid];	
}

function set_auto (bytes32 regid, bytes32 make, bytes32 model, bytes32 colour, bytes32 owner, bytes32 leaseid) public {
Autolist[regid].make = make;
Autolist[regid].model = model;
Autolist[regid].colour = colour;
Autolist[regid].owner = owner;
Autolist[regid].leaseid = leaseid;
}

function transfer_auto (bytes32 regid, bytes32 new_owner) public {
Autolist[regid].owner = new_owner;
}

//function change_auto_status (string regid, bool status) {}


}