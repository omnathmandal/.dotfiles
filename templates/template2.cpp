#include <bits/stdc++.h>
using namespace std;

// inputs
#define int long long int
#define st string
#define si(x) int x; cin>>x;
#define ss(x) string x; cin>>x;
#define vi(i) vector<int>i;
#define pb(v,i) v.push_back(i);

//loops
#define forl(i,n) for(int i = 0; i < n; i++)
#define forl1(i,n) for(int i = 1; i <= n; i++)

//ans operators
#define mod 1000000007

//parity checker
bool pa(int super) {if(super%2==0)return true; return false;}
bool par(int super,int power) {if(super%power==0)return true; return false;}

//return yes or no
#define Y() return "YES"
#define N() return "NO"

//vector and pairs
#define F first
#define S second

//sorts
#define asort(i) sort(i.begin(),i.end());
#define dsort(i) sort(i.begin(),i.end(),greater<int>);

//input array
#define arrin(n, arr) vector<int>arr; for (int i = 0; i < n; i++){int x;cin>>x; arr.push_back(x);}

//sumofdigit
int32_t dsum(int x){int s=0;while(x>0){s+=x%10;x/=10;}return s;}

//printdata
#define pdata(o) for(auto element:o){cout<<element<<" ";}cout<<"\n";

int32_t solve()
{
    return 0; 
}
int32_t main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);
    int t; cin>>t;
    while(t--)
    {
        cout<<solve()<<"\n";
    }
}
