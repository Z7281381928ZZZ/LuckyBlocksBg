bit32={};local v0=32;local v1=2^v0 ;bit32.bnot=function(v9) v9=v9%v1 ;return (v1-1) -v9 ;end;bit32.band=function(v10,v11) if (v11==255) then return v10%256 ;end if (v11==65535) then return v10%65536 ;end if (v11==4294967295) then return v10%4294967296 ;end v10,v11=v10%v1 ,v11%v1 ;local v12=0;local v13=1;for v28=1,v0 do local v29,v30=v10%2 ,v11%2 ;v10,v11=math.floor(v10/2 ),math.floor(v11/2 );if ((v29 + v30)==2) then v12=v12 + v13 ;end v13=2 * v13 ;end return v12;end;bit32.bor=function(v14,v15) if (v15==255) then return (v14-(v14%256)) + 255 ;end if (v15==65535) then return (v14-(v14%65536)) + 65535 ;end if (v15==4294967295) then return 4294967295;end v14,v15=v14%v1 ,v15%v1 ;local v16=0;local v17=1;for v31=1,v0 do local v32,v33=v14%2 ,v15%2 ;v14,v15=math.floor(v14/2 ),math.floor(v15/2 );if ((v32 + v33)>=1) then v16=v16 + v17 ;end v17=2 * v17 ;end return v16;end;bit32.bxor=function(v18,v19) v18,v19=v18%v1 ,v19%v1 ;local v20=0;local v21=1;for v34=1,v0 do local v35,v36=v18%2 ,v19%2 ;v18,v19=math.floor(v18/2 ),math.floor(v19/2 );if ((v35 + v36)==1) then v20=v20 + v21 ;end v21=2 * v21 ;end return v20;end;bit32.lshift=function(v22,v23) if (math.abs(v23)>=v0) then return 0;end v22=v22%v1 ;if (v23<0) then return math.floor(v22 * (2^v23) );else return (v22 * (2^v23))%v1 ;end end;bit32.rshift=function(v24,v25) if (math.abs(v25)>=v0) then return 0;end v24=v24%v1 ;if (v25>0) then return math.floor(v24 * (2^ -v25) );else return (v24 * (2^ -v25))%v1 ;end end;bit32.arshift=function(v26,v27) if (math.abs(v27)>=v0) then return 0;end v26=v26%v1 ;if (v27>0) then local v37=0;if (v26>=(v1/2)) then v37=v1-(2^(v0-v27)) ;end return math.floor(v26 * (2^ -v27) ) + v37 ;else return (v26 * (2^ -v27))%v1 ;end end;while wait() do game:GetService("ReplicatedStorage"):WaitForChild("SpawnLuckyBlock"):FireServer();end
