
public static int checksum(){
	
		int $t0;	//headers_checksum
		int $t1;	// input
		int $t2;	// sum
		int $t3;	// max
		int $t4;	// checksum
		int $t5;	// quotient
		int $t6;	// remainder
		int $l;		
		int $r; 

		$t0 = 0;
		$t1 = 0;
		$t2 = 0;
		$t3 = 255;  
init:	;
		$l = 0;
		$r = 10;
loop:	for(;$l<$r;){
body:		;
			mips.read_d();
         	$t1 = mips.retval();
			$t2 += $t1;
			if($l == 5){
				$t0 = $t1;
				$t2 -= $t0;
			}
next:		;
			$l++;
			continue loop;
		}
done:	;
		$t5 = $t2/($t3+1);
		$t6 = $t2%($t3+1);
		$t4 = $t3-($t5+$t6);
		if($t0 == $t4){
			return 0;
		}
		return $t4;
}
// Task 1 complete: Mon Oct  9 22:06:06 PDT 2023

// Task 1 complete: Mon Oct  9 22:09:07 PDT 2023

// Task 2 complete: Wed Oct 11 16:15:46 PDT 2023
