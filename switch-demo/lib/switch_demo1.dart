void switch1(String ntn){
		print(ntn);
		var x=switch(ntn){
				 'red' => 	'the red color' ,
				 'blue' => 'the sky is blue' ,
				  'pink'=> 'the pink villa' ,
				_ => 'nan',
			};
	     print(x);
}