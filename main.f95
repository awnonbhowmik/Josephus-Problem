integer recursive function josephus(n,k) result(W)
	integer,intent(in)::n,k
    integer::W

    if(n==1)then
      W=1
    else
      W=mod(josephus(n-1,k)+k-1,n)+1
    end if
    return							!this should automatically return the 'result' W
end function
!------------------------------------------------------------------------------------
!Main program starts here
integer total_position, starting_position, survival_position
write(*,*)'How many people are in the circle:'
read(*,*)total_position
write(*,*)'Choose a starting position:'
read(*,*)starting_position

if(starting_position<1.OR.starting_position>total_position)then
  write(*,*)'Invalid starting position. Terminating...'
  stop
end if
write(*,*)

  survival_position = josephus(total_position,starting_position)
write(*,*)'The survivor is at position: ',survival_position
end