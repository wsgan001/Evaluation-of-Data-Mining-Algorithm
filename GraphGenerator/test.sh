for j in {1..5}
do
for k in {0,5}
do
sed "s|final int\[\] ATTR = .*|final int\[\] ATTR = { $j$k, $j$k };|" exploration.java > explorationa.java
rm exploration.java
mv explorationa.java exploration.java
for n in {1..3}
do
for o in {0,5}
do
sed "s|final int\[\] PATNODE = .*|final int\[\] PATNODE = { $n$o, $n$o };|g" exploration.java > explorationa.java
rm exploration.java
mv explorationa.java exploration.java
for l in {0,5}
do
for m in {0}
do
sed "s|final double\[\] PATPROB = .*|final double\[\] PATPROB = { 0.$l0, 0.$l0 };|g" exploration.java > explorationa.java
rm exploration.java
mv explorationa.java exploration.java
for p in {1,0}
do
for i in {1..5}
do
    sed "s|final double\[\] MINSUPPORT = .*|final double\[\] MINSUPPORT = { 0.$p$i, 0.$p$i };|" exploration.java > explorationa.java
rm exploration.java
mv explorationa.java exploration.java
for q in {2..3}
do
for r in {0..5}
do
sed "s|final double\[\] APROB = .*|final double\[\] APROB = { 0.$q$r, 0.$q$r };|g" exploration.java > explorationa.java
rm exploration.java
mv explorationa.java exploration.java
./generate.sh explore.txt patterns.txt
done
done
done
done
echo rename
    mv patterns.txt patterns$n$o.txt
done
done
done
done
done
done
