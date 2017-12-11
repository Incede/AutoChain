pragma solidity ^0.4.19;
import "Auto1.sol"
// utilities for selling and leasing Automobiles

contract Marketplace is Auto{

struct Linfo{
bytes32 LeaseId;
bytes32 owner;
uint32 lease_no;
bytes32 leasee;
}
mapping(bytes32=>Leaseinfo) Leaselist;

function Lease_auto (bytes32 regid, bytes32 new_owner, bytes32 leaseid, bytes32 leasee) {
Linfo info = Leaselist[regid];
info.leasee = new_owner;
info.LeaseId = leaseid;
info.lease_no += 1;
}

uint32[] owners;
mapping (bytes32=>owners) ownerlist;

function sellauto(bytes32 regid, bytes32 new_owner) {
index = ownerlist[regid].length;
owners[index]=new_owner;
Autolist[regid].owner = new_owner;
}


}