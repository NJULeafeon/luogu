#include <iostream>
#include <algorithm>
#include <cmath>
#include <vector>
#include <cstring>
using namespace std;
namespace BigInteger
{
#define maxn 10005
    using std::sprintf;
    using std::string;
    using std::max;
    using std::istream;
    using std::ostream;

    struct Big_integer{
        int d[maxn], len;

        void clean()
        {
            while(len > 1 && !d[len-1])
                len--;
        }

        Big_integer()          { memset(d, 0, sizeof(d)); len = 1; }
        Big_integer(int num)   { *this = num; }
        Big_integer(char* num) { *this = num; }
        Big_integer operator = (const char* num){
            memset(d, 0, sizeof(d)); len = strlen(num);
            for(int i = 0; i < len; i++) d[i] = num[len-1-i] - '0';
            clean();
            return *this;
        }

        Big_integer operator = (int num){
            char s[10005]; sprintf(s, "%d", num);
            *this = s;
            return *this;
        }

        Big_integer operator + (const Big_integer& b){
            Big_integer c = *this; int i;
            for (i = 0; i < b.len; i++){
                c.d[i] += b.d[i];
                if (c.d[i] > 9) c.d[i]%=10, c.d[i+1]++;
            }
            while (c.d[i] > 9) c.d[i++]%=10, c.d[i]++;
            c.len = max(len, b.len);
            if (c.d[i] && c.len <= i) c.len = i+1;
            return c;
        }

        Big_integer operator - (const Big_integer& b){
            Big_integer c = *this; int i;
            for (i = 0; i < b.len; i++){
                c.d[i] -= b.d[i];
                if (c.d[i] < 0) c.d[i]+=10, c.d[i+1]--;
            }
            while (c.d[i] < 0) c.d[i++]+=10, c.d[i]--;
            c.clean();
            return c;
        }

        Big_integer operator * (const Big_integer& b)const{
            int i, j; Big_integer c; c.len = len + b.len;
            for(j = 0; j < b.len; j++) for(i = 0; i < len; i++)
                    c.d[i+j] += d[i] * b.d[j];
            for(i = 0; i < c.len-1; i++)
                c.d[i+1] += c.d[i]/10, c.d[i] %= 10;
            c.clean();
            return c;
        }

        Big_integer operator / (const Big_integer& b){
            int i, j;
            Big_integer c = *this, a = 0;
            for (i = len - 1; i >= 0; i--)
            {
                a = a*10 + d[i];
                for (j = 0; j < 10; j++) if (a < b*(j+1)) break;
                c.d[i] = j;
                a = a - b*j;
            }
            c.clean();
            return c;
        }

        Big_integer operator % (const Big_integer& b){
            int i, j;
            Big_integer a = 0;
            for (i = len - 1; i >= 0; i--)
            {
                a = a*10 + d[i];
                for (j = 0; j < 10; j++) if (a < b*(j+1)) break;
                a = a - b*j;
            }
            return a;
        }

        Big_integer operator += (const Big_integer& b){
            *this = *this + b;
            return *this;
        }

        bool operator <(const Big_integer& b) const{
            if(len != b.len) return len < b.len;
            for(int i = len-1; i >= 0; i--)
                if(d[i] != b.d[i]) return d[i] < b.d[i];
            return false;
        }
        bool operator >(const Big_integer& b) const{return b < *this;}
        bool operator<=(const Big_integer& b) const{return !(b < *this);}
        bool operator>=(const Big_integer& b) const{return !(*this < b);}
        bool operator!=(const Big_integer& b) const{return b < *this || *this < b;}
        bool operator==(const Big_integer& b) const{return !(b < *this) && !(b > *this);}

        string str() const{
            char s[maxn]={};
            for(int i = 0; i < len; i++) s[len-1-i] = d[i]+'0';
            return s;
        }
    };

    istream& operator >> (istream& in, Big_integer& x)
    {
        string s;
        in >> s;
        x = s.c_str();
        return in;
    }

    ostream& operator << (ostream& out, const Big_integer& x)
    {
        //out << x.str();
        out << x.d[2] << x.d[1] << x.d[0];
        return out;
    }
}
using namespace BigInteger;
int main() {
    freopen("in.txt","r",stdin);
    int n;
    cin >> n;
    cout << int(n*log10(2)+1);
    Big_integer dalao = 1;
    Big_integer mult = 2;
    while(n!=0){
        if(n&1) dalao = dalao*mult;
        mult = mult*mult;
        n>>=1;
    }
    cout << dalao;
    return 0;
}