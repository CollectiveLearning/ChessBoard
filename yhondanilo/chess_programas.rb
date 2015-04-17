
 arr=Array.new(3){Array.new(3)}
  arr[0][0]=1
  for i in 0..3
   for j in 0..3
    if arr[i-1][j]==0
     puts "true"
     arr[i][j]=1
    else
     arr[i][j]=0
    end
    if arr[i][j-1] ==0
     arr[i][j]=1
    else
     arr[i][j]=0
    end
   end
  end




arr=Array.new(2){Array.new(2)}

arr[0][0]=1
for i in 0..1
 for j in 0..1
  if arr[i][j-1]==0
   arr[i][j]=1
  elsif arr[i][j-1]==1
   arr[i][j]=0
  end
  if arr[i][j]==arr[i][1]
   ultimo=arr[i][j]
   if arr[i][j]==0
    arr[i+1][j]=1
   elsif arr[i][j]==1
    arr[i+1][j]=0
   end
  end
 end
end

