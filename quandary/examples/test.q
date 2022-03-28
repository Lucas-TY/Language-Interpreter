mutable Q main(int arg) {
  mutable Ref a=nil;
  mutable Ref b= 1.a;
  a=b.1;
  print b;
  return a;
  
}

mutable Ref add(Ref list, Q elem) {
  if (isNil(list) != 0) {
    return elem . nil;
  }
   print 2;
  mutable Ref curr = list;
   print 2;
  while (isNil(right(curr)) == 0) {
    curr = (Ref)right(curr);
  }
   print 2;
  setRight(curr, elem . nil);
  return list;
}

int length(Ref c) {
  if (isAtom(c) != 0) return 0;
  return 1 + length((Ref)right(c));
}

int getMax(Ref list){
	mutable Ref dumList=list;
	int n = length(list);
	mutable int i=1;
	mutable int currmax=0;
	while(i<=n){
		if(currmax<(int)left(dumList))
			currmax=(int)left(dumList);
		dumList=(Ref)right(dumList);
		i=i+1;
	}
return currmax;

}
