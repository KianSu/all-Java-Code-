public static int glyph2int(char glyph, int radix){

    int $t0;                                        
    int $a0;                                                          
    int $a1;                                        
                                                    
    $t0 = 0;   //value;                                     
    $a0 = glyph;                                   
    $a1 = radix;                                            
init:;                                              
    if('0'<=$a0){
cons:;  if('9'>=$a0){

cons2:;    $t0 = $a0 - '0';
        }    
    }
    if('a'<=$a0){
cons3:;  if('f'>=$a0){
cons4:;     $t0 = 10 + $a0;
            $t0 = $t0 - 'a';
        }
    }
    if('A'<=$a0){
cons5:;  if('F'>=$a0){
cons6:;   $t0 = 10 + $a0;
          $t0 = $t0 - 'A';  
        }
    }
    if($t0>=$a1){
cons7:;  $t0 = -1;
    }
    return $t0;
}

static char [] buffer = new char[256];

public static int nextInt(int radix){

    final int buffer_length;
    int num;
    int result;
    final int $zero;
    int i;

    $zero = 0;
    i = $zero;
    mips.read_s(buffer, 256);
    buffer_length = mips.retval();  
    result = $zero;
init:   ;

loop:; for(;'\0'!=buffer[i];){
body:   ;
        num = glyph2int(buffer[i],radix);

        if(num==-1) 
cons:       break;
next:   ;
        i++;
        result = result*radix;
        result = result +num;
    }
done:;
    return result;
}

// java_code: Fri Nov 10 19:10:39 PST 2023

// java_code 
