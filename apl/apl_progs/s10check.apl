integer main(){
	integer childpid, retval;
	childpid = Fork();
	if (childpid == -2) then
		//breakpoint;
		retval = Exec("s10check.xsm");
	else
		while(childpid != -1) do
			//breakpoint;
			print(childpid);
		endwhile;
		if(childpid == -1) then
			print("yo");
			breakpoint;
		endif;
	endif;
	return 0;
}
