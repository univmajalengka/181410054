#include <iostream>

using namespace std;

int main()
{
	int a[100], b;
	cout<<"Masukkan jumlah elemen array: "; cin>>b;
	for (int i = 0; i < b; i++)
		{
		cin>>a[i];
	}

	cout<<"\n Angka yang diinputkan :"<<endl;
	for (int i = 0; i < b; i++)
	{
		cout<<a[i]<<endl;
	}

	return 0;
}