#include <bits/stdc++.h>
#define range(i, a, b) for(int i = (a); i < (b); i++)
#define rep(i, a) range(i, 0, a)
using namespace std;

int n;
struct Box {
	int h;
	int w;
	bool operator< (const Box& o) const {
		return w == o.w ? h < o.h : w < o.w;
	}
};

vector <Box> box;
map <pair <int, int>, int> memo;

int rec (int k = 0, int pre = -1) {
	if (k == n) {
		return 0;
	}
	if (memo.count(make_pair(k, pre))) {
		return memo[make_pair(k, pre)];
	}
	int res;
	if (pre == -1 || pre != -1 && box[pre].h > box[k].h && box[pre].w > box[k].w) {
		res = max(rec(k + 1, pre), rec(k + 1, k) + 1);
	} else {
		res = rec(k + 1, pre);
	}
	return memo[make_pair(k, pre)] = res;
}

int main() {
	cin >> n;
	rep (i, n) {
		Box in;
		cin >> in.w >> in.h;
		box.push_back(in);
	}
	sort(box.rbegin(), box.rend());
	cout << rec() << endl;
	cout << memo.size() << endl;
	return 0;
}

