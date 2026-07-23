//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract TicketBooking{
    uint public remainningTickets=120;
    uint public bookedTickets;

    function bookTicket()public {
        bookedTickets++;
        remainningTickets-=bookedTickets;
    }
}