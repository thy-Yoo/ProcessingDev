void pig_function_ch02(){

  /////////////////////////////////////////////////////////////////////////////////////pig move condition
    if (house[0].exist==death && house[1].exist==alive && house[2].exist==alive) {
      pig_step=0;
    } else if (house[0].exist==alive && house[1].exist==death && house[2].exist==alive) {
      pig_step=1;
    } else if (house[0].exist==alive && house[1].exist==alive && house[2].exist==death) {
      pig_step=2;
    }
  
  
    ////////////////////////////////////////////////////////////////////////////////////////pig0
    if (house[0].exist == death) {
      pig[0].pig1display();
      if (house[1].exist==alive && pig_step!=1) {    
        pig[0].move01();
      }
      else if (house[1].exist==death && house[2].exist==alive && pig_step!=1) {      
        pig[0].move12();
      }
      else if (house[1].exist==death && house[2].exist==alive && pig_step==1) {    //&& pig_step==1      
        pig[0].move02();
      }
    }
  
    ///////////////////////////////////////////////////////////////////////////////////////pig1
    if (house[1].exist == death) {
      pig[1].pig2display();
      if (house[0].exist == alive && pig_step !=0) {      
        pig[1].move10();
      }
      else if (house[0].exist == death && house[2].exist == alive && pig_step !=0) {      
        pig[1].move02();
      }
      else if (house[0].exist == death && house[2].exist == alive && pig_step ==0) {      
        pig[1].move12();
      }
    }
  
    ///////////////////////////////////////////////////////////////////////////////////////pig2
  
  
    if (house[2].exist == death) {
      pig[2].pig3display();
      if (house[0].exist==alive &&  pig_step !=0 ) {      
        pig[2].move20();
      }  
      else if (house[0].exist==death && house[1].exist==alive &&  pig_step !=0) {      
        pig[2].move01();
      }
      else if (house[0].exist== death && house[1].exist==alive &&  pig_step ==0) {      
        pig[2].move21();
      }
    }
  
  
    ////////////////////////////////////////////////////////////////////////////////////game over pig death
    if (house[0].exist==death && house[1].exist==death && house[2].exist==death) {    
      pig[0].pig1display();
      pig[0].death();
  
      pig[1].pig2display();
      pig[1].death();
  
      pig[2].pig3display();
      pig[2].death();
    }
    
}