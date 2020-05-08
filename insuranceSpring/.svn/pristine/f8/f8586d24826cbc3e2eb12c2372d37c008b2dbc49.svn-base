	function louadlisuanImg(){
		    
			$("#file1").change(function(e){
			
				var file =e.target.files[0] || e.dataTransfer.files[0];
				if(file){
					var reader =new FileReader();
					reader.onload =function(){
						
						$("#img1").eq(0).attr("src",this.result);
						
					}
					
					reader.readAsDataURL(file);
				}
			})
			
			
			
			
			
			$("#file2").change(function(e){
			
				var file =e.target.files[0] || e.dataTransfer.files[0];
				if(file){
					var reader =new FileReader();
					reader.onload =function(){
						
						$("img").eq(1).attr("src",this.result);
					}
					
					reader.readAsDataURL(file);
				}
			})
			
	}
		
	
	
	