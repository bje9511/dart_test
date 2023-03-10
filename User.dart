import 'dart : math';

int getNum(int min, int max) {
  Random random = new Random();
  return min + random.nextInt(max-min);
}



//플레이어 클래스 정의
import 'dart:html';

class User {
  /* 이름과 체력, 민뎀, 맥뎀, 방어력, 덱 만들기
  name, hp, mindmg, maxdmg, deg, */
  String name;
  int hp;
  int minDmg;
  int maxDmg;
  int def;

  User (this.name, this.minDmg, this.maxDmg, this.def)

  //method 기능 function
  //죽었는가?
    //bool isDead() {
    //if( hp == 0) return  true;
    //else return false;
  //}
    bool isDead() => hp <= 0? true:false;

  //공격 기능 = 공격 데미지 얻기
  int attack() {
      return getNum(minDmg, maxDmg);
  }

  //맞기 기능
int getDmg(int dmg) {
    //데미지에서 방어력 만큼 차감  10 - 2방 = 8뎀
  dmg -= def;
  if(dmg > 0) dmg = 0; 
  hp -= dmg;
}
}