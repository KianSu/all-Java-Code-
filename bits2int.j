public static int get_bit(){
			int $t0;                      	//int bit;
			int $t1;                      	//int num;
			char a_zero;										//
			char a_one;											//
										  								//
			a_one = '1';										//
			a_zero = '0';										//
	    $t0 = -1;					  						//
init:  		                            //
	    mips.read_c();                  //mips.read_c();
      $t1 = mips.retval();            //num = mips.retval();
                                      //
      if($t1 == a_one){      		      //if(num=='1')
cons:   $t0 = 1;              	      //	bit = 1;
      }																//
      if($t1 == a_zero){              //else if(num=='0')
cons2:  $t0 = 0;                      //	bit = 0;
      }                               //else
                                      //	bit  = -1;
      return $t0;                     //return bit;
}
public static int bits2int(){
	    int $t0;                          //int num;
	    int $t1;                          //int result;
init:                                   //
	    $t1 =0;                           //result = 0;
	    $t0 = get_bit();                  //num = get_bit();
loop: for(;$t0!=-1;){                   //while(num!=-1){
body: ;                              		//
			$t1	=	$t1 <<	1	;                 //	result = result<<1;
	    $t1 = $t1 +$t0;                   //	result += num;
	    $t0 = get_bit();                  //	num = get_bit();
	    continue loop;                    //
	  	}																	//}
done:                                   //
	    return $t1;                       //return result;
}


// java_code: Fri Nov 10 19:09:36 PST 2023

// java_code 

// java_tac_code
