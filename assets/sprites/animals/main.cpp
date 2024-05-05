#include <iostream>
#include <vector>
#include <fstream>
#include <iomanip>
#include <cstring>

using namespace std;

const int N = 20;
struct Auto {
    char brand[N];
    char model[N];
    int weight;
    int fuelRate;
    int maxSpeed;
};

void printInstruction();
void printSearchInstruction();
void printSearchMenu();
void newRecord();
void deleteRecord();
void reWriteFileFromTemp(char s[N]);
void printBase();
void searchRecord();
void sortBase();
int countOfStructure(char s[N]);

int main() {
    setlocale(LC_ALL, "Rus");
    int menu;
    bool goOut = false; // ����� �� ���������
    cout << "����� ���������� � ��������� ��� ������ � ����� ������!" << endl;
    while (!goOut) {
        printInstruction();
        cin >> menu;
        switch (menu) {
            case 0: {goOut = true;  break;}
            case 1: {newRecord();  break;}
            case 2: {printBase();  break;}
            case 3: {deleteRecord();  break;}
            case 4: {sortBase();  break;}
            case 5: {searchRecord();  break;}
        }
    }
    cin.get();
    return 0;
}

void printInstruction() {
    cout << "�������� ����������� �����:" << endl;
    cout << "-������� 0 ��� ������ �� ���������" << endl;
    cout << "-������� 1 ��� �������� ����� ������" << endl;
    cout << "-������� 2 ��� ������ ���� ������" << endl;
    cout << "-������� 3 ��� �������� ���������� ������" << endl;
    cout << "-������� 4 ��� ���������� ���� ������ �� ���������� ������" << endl;
    cout << "-������� 5 ��� ������ ���������� � ������ ������" << endl;
    cout << "�����! �� ������� ���������, ������� 10 ��������" << endl;
}


void newRecord() {
    Auto A;
    vector<Auto> Cars;
    string file_name;
    ofstream fout;
    ifstream fin;

    cout << "������� ��� �����:" << endl;
    cin >> file_name;

    fin.open(file_name, ios::binary);
    while(fin.read((char*) &A, sizeof(A))) {
        Cars.push_back(A);
    }
    fin.close();

    cout << "������� ����� ����������" << endl;
    cin >> A.brand;
    cout << "������� ������ ����������" << endl;
    cin >> A.model;
    cout << "������� ��� ����������" << endl;
    cin >> A.weight;
    cout << "������� ������ ������� ����������" << endl;
    cin >> A.fuelRate;
    cout << "������� ������������ �������� ����������" << endl;
    cin >> A.maxSpeed;

    Cars.push_back(A);
    Auto Copys[Cars.size()];
    for (int i = 0; i < Cars.size(); i++) {
        Copys[i] = Cars[i];
    }

    fout.open(file_name, ios::binary);
    fout.write((char*) Copys, (Cars.size()) * sizeof(Auto));
    fout.close();
    cout << "������ ������� �������!" << endl;
}


void printBase() {
    Auto A;
    vector<Auto> Cars;
    string file_name;
    ofstream fout;
    ifstream fin;

    cout << "������� ��� �����:" << endl;
    cin >> file_name;

    fin.open(file_name, ios::binary);
    cout << "    brand       model    weight  fuel  speed" << endl;
    cout << "|-----------|-----------|------|------|-----|" << endl;
    while(fin.read((char*) &A, sizeof(A))) {
        int w = 0, f = 0, s = 0, weight = A.weight, fuel = A.fuelRate, speed = A.maxSpeed;
        while (weight) { weight /= 10; w++; }
        while (fuel) { fuel /= 10; f++; }
        while (speed) { speed /= 10; s++; }
        cout << "|" << A.brand << setfill(' ') << setw(12 - strlen(A.brand)) << "|" << A.model << setfill(' ') << setw(12 - strlen(A.model)) << "|" << A.weight << setfill(' ') << setw(7 - w) << "|" << A.fuelRate << setfill(' ') << setw(7 - f) << "|" << A.maxSpeed << setfill(' ') << setw(6 - s) << "|" << endl;
        cout << "|-----------|-----------|------|------|-----|" << endl;
    }
    fin.close();
}


void deleteRecord() {
    Auto A;
    vector<Auto> Cars;
    string file_name, brand;
    bool flag = false;
    int number, wfm;
    ofstream fout;
    ifstream fin;

    cout << "������� ��� �����:" << endl;
    cin >> file_name;

    cout << "������� ����� ����, �� �������� ����� ���������� ����� ������ ��� ��������:" << endl;
    cout << "1: �����" << endl;
    cout << "2: ������" << endl;
    cout << "3: ���" << endl;
    cout << "4: ������ �������" << endl;
    cout << "5: ������������ ��������" << endl;
    cin >> number;

    if (number == 1) {
        cout << "������� ����� ����������:" << endl;
        cin >> brand;
        fin.open(file_name, ios::binary);
        while(fin.read((char*) &A, sizeof(A))) {
            if (A.brand == brand) flag = true;
            if (A.brand != brand) Cars.push_back(A);
        }
        fin.close();
    }
    if (number == 2) {
        cout << "������� ������ ����������:" << endl;
        cin >> brand;
        fin.open(file_name, ios::binary);
        while(fin.read((char*) &A, sizeof(A))) {
            if (A.model == brand) flag = true;
            if (A.model != brand) Cars.push_back(A);
        }
        fin.close();
    }
    if (number == 3) {
        cout << "������� ��� ����������:" << endl;
        cin >> wfm;
        fin.open(file_name, ios::binary);
        while(fin.read((char*) &A, sizeof(A))) {
            if (A.weight == wfm) flag = true;
            if (A.weight != wfm) Cars.push_back(A);
        }
        fin.close();
    }
    if (number == 4) {
        cout << "������� ������ ������� ����������:" << endl;
        cin >> wfm;
        fin.open(file_name, ios::binary);
        while(fin.read((char*) &A, sizeof(A))) {
            if (A.fuelRate == wfm) flag = true;
            if (A.fuelRate != wfm) Cars.push_back(A);
        }
        fin.close();
    }
    if (number == 5) {
        cout << "������� ������������ �������� ����������:" << endl;
        cin >> wfm;
        fin.open(file_name, ios::binary);
        while(fin.read((char*) &A, sizeof(A))) {
            if (A.maxSpeed == wfm) flag = true;
            if (A.maxSpeed != wfm) Cars.push_back(A);
        }
        fin.close();
    }

    Auto Copys[Cars.size()];
    for (int i = 0; i < Cars.size(); i++) {
        Copys[i] = Cars[i];
    }

    fout.open(file_name, ios::binary);
    fout.write((char*) Copys, (Cars.size()) * sizeof(Auto));
    fout.close();
    if (not flag) cout << "������� � ����� ���������� ��� � ���� ������" << endl;
    else cout << "������(�) ������� �������(�)!" << endl;
}


void sortBase() {
    Auto A, K;
    vector<Auto> Cars;
    string file_name;
    int number;
    ofstream fout;
    ifstream fin;

    cout << "������� ��� �����:" << endl;
    cin >> file_name;

    fin.open(file_name, ios::binary);
    while(fin.read((char*) &A, sizeof(A))) {
        Cars.push_back(A);
    }
    fin.close();

    cout << "������� ����� ����, �� �������� ����� ����������� ����������:" << endl;
    cout << "1: �����" << endl;
    cout << "2: ������" << endl;
    cout << "3: ���" << endl;
    cout << "4: ������ �������" << endl;
    cout << "5: ������������ ��������" << endl;
    cin >> number;
    if (number == 1) {
        for (int i = 0; i < Cars.size() - 1; i++) {
            for (int j = 0; j < Cars.size() - i - 1; j++) {
                if (Cars[j].brand < Cars[j + 1].brand) {
                    K = Cars[j];
                    Cars[j] = Cars[j + 1];
                    Cars[j + 1] = K;
                }
            }
        }
    }
    if (number == 2) {
        for (int i = 0; i < Cars.size() - 1; i++) {
            for (int j = 0; j < Cars.size() - i - 1; j++) {
                if (Cars[j].model < Cars[j + 1].model) {
                    K = Cars[j];
                    Cars[j] = Cars[j + 1];
                    Cars[j + 1] = K;
                }
            }
        }
    }
    if (number == 3) {
        for (int i = 0; i < Cars.size() - 1; i++) {
            for (int j = 0; j < Cars.size() - i - 1; j++) {
                if (Cars[j].weight > Cars[j + 1].weight) {
                    K = Cars[j];
                    Cars[j] = Cars[j + 1];
                    Cars[j + 1] = K;
                }
            }
        }
    }
    if (number == 4) {
        for (int i = 0; i < Cars.size() - 1; i++) {
            for (int j = 0; j < Cars.size() - i - 1; j++) {
                if (Cars[j].fuelRate > Cars[j + 1].fuelRate) {
                    K = Cars[j];
                    Cars[j] = Cars[j + 1];
                    Cars[j + 1] = K;
                }
            }
        }
    }
    if (number == 5) {
        for (int i = 0; i < Cars.size() - 1; i++) {
            for (int j = 0; j < Cars.size() - i - 1; j++) {
                if (Cars[j].maxSpeed > Cars[j + 1].maxSpeed) {
                    K = Cars[j];
                    Cars[j] = Cars[j + 1];
                    Cars[j + 1] = K;
                }
            }
        }
    }

    Auto Copys[Cars.size()];
    for (int i = 0; i < Cars.size(); i++) {
        Copys[i] = Cars[i];
    }

    fout.open(file_name, ios::binary);
    fout.write((char*) Copys, (Cars.size()) * sizeof(Auto));
    fout.close();
    cout << "���� ������ ������� ������������� �� ������� ������!" << endl;
}


void searchRecord() {
    Auto A, K;
    vector<Auto> Cars;
    string file_name, name;
    int number = 0, count = 0, c = 0;
    bool flag = false;
    ofstream fout;
    ifstream fin;

    cout << "������� ��� �����:" << endl;
    cin >> file_name;

    fin.open(file_name, ios::binary);
    while(fin.read((char*) &A, sizeof(A))) {
        Cars.push_back(A);
    }
    fin.close();

    cout << "������� ����� ����, �� �������� ����� ����������� �����:" << endl;
    cout << "1: �����" << endl;
    cout << "2: ������" << endl;
    cout << "3: ���" << endl;
    cout << "4: ������ �������" << endl;
    cout << "5: ������������ ��������" << endl;
    cin >> number;

    if (number == 1) {
        cout << "������� �������� �����:" << endl;
        cin >> name;
        for (int i = 0; i < Cars.size(); i++) {
            if (Cars[i].brand == name) {
                c++;
                flag = true;
                if (c == 1) {
                    cout << "    brand       model    weight  fuel  speed" << endl;
                    cout << "|-----------|-----------|------|------|-----|" << endl;
                }
                int w = 0, f = 0, s = 0, weight = Cars[i].weight, fuel = Cars[i].fuelRate, speed = Cars[i].maxSpeed;
                while (weight) { weight /= 10; w++; }
                while (fuel) { fuel /= 10; f++; }
                while (speed) { speed /= 10; s++; }
                cout << "|" << Cars[i].brand << setfill(' ') << setw(12 - strlen(Cars[i].brand)) << "|" << Cars[i].model << setfill(' ') << setw(12 - strlen(Cars[i].model)) << "|" << Cars[i].weight << setfill(' ') << setw(7 - w) << "|" << Cars[i].fuelRate << setfill(' ') << setw(7 - f) << "|" << Cars[i].maxSpeed << setfill(' ') << setw(6 - s) << "|" << endl;
                cout << "|-----------|-----------|------|------|-----|" << endl;
            }
        }
    }
    if (number == 2) {
        cout << "������� �������� ������:" << endl;
        cin >> name;
        for (int i = 0; i < Cars.size(); i++) {
            if (Cars[i].model == name) {
                c++;
                flag = true;
                if (c == 1) {
                    cout << "    brand       model    weight  fuel  speed" << endl;
                    cout << "|-----------|-----------|------|------|-----|" << endl;
                }
                int w = 0, f = 0, s = 0, weight = Cars[i].weight, fuel = Cars[i].fuelRate, speed = Cars[i].maxSpeed;
                while (weight) { weight /= 10; w++; }
                while (fuel) { fuel /= 10; f++; }
                while (speed) { speed /= 10; s++; }
                cout << "|" << Cars[i].brand << setfill(' ') << setw(12 - strlen(Cars[i].brand)) << "|" << Cars[i].model << setfill(' ') << setw(12 - strlen(Cars[i].model)) << "|" << Cars[i].weight << setfill(' ') << setw(7 - w) << "|" << Cars[i].fuelRate << setfill(' ') << setw(7 - f) << "|" << Cars[i].maxSpeed << setfill(' ') << setw(6 - s) << "|" << endl;
                cout << "|-----------|-----------|------|------|-----|" << endl;
            }
        }
    }
    if (number == 3) {
        cout << "������� ���:" << endl;
        cin >> count;
        for (int i = 0; i < Cars.size(); i++) {
            if (Cars[i].weight == count) {
                c++;
                flag = true;
                if (c == 1) {
                    cout << "    brand       model    weight  fuel  speed" << endl;
                    cout << "|-----------|-----------|------|------|-----|" << endl;
                }
                int w = 0, f = 0, s = 0, weight = Cars[i].weight, fuel = Cars[i].fuelRate, speed = Cars[i].maxSpeed;
                while (weight) { weight /= 10; w++; }
                while (fuel) { fuel /= 10; f++; }
                while (speed) { speed /= 10; s++; }
                cout << "|" << Cars[i].brand << setfill(' ') << setw(12 - strlen(Cars[i].brand)) << "|" << Cars[i].model << setfill(' ') << setw(12 - strlen(Cars[i].model)) << "|" << Cars[i].weight << setfill(' ') << setw(7 - w) << "|" << Cars[i].fuelRate << setfill(' ') << setw(7 - f) << "|" << Cars[i].maxSpeed << setfill(' ') << setw(6 - s) << "|" << endl;
                cout << "|-----------|-----------|------|------|-----|" << endl;
            }
        }
    }
    if (number == 4) {
        cout << "������� ������ �������:" << endl;
        cin >> count;
        for (int i = 0; i < Cars.size(); i++) {
            if (Cars[i].fuelRate == count) {
                c++;
                flag = true;
                if (c == 1) {
                    cout << "    brand       model    weight  fuel  speed" << endl;
                    cout << "|-----------|-----------|------|------|-----|" << endl;
                }
                int w = 0, f = 0, s = 0, weight = Cars[i].weight, fuel = Cars[i].fuelRate, speed = Cars[i].maxSpeed;
                while (weight) { weight /= 10; w++; }
                while (fuel) { fuel /= 10; f++; }
                while (speed) { speed /= 10; s++; }
                cout << "|" << Cars[i].brand << setfill(' ') << setw(12 - strlen(Cars[i].brand)) << "|" << Cars[i].model << setfill(' ') << setw(12 - strlen(Cars[i].model)) << "|" << Cars[i].weight << setfill(' ') << setw(7 - w) << "|" << Cars[i].fuelRate << setfill(' ') << setw(7 - f) << "|" << Cars[i].maxSpeed << setfill(' ') << setw(6 - s) << "|" << endl;
                cout << "|-----------|-----------|------|------|-----|" << endl;
            }
        }
    }
    if (number == 5) {
        cout << "������� ������������ ��������:" << endl;
        cin >> count;
        for (int i = 0; i < Cars.size(); i++) {
            if (Cars[i].maxSpeed == count) {
                c++;
                flag = true;
                if (c == 1) {
                    cout << "    brand       model    weight  fuel  speed" << endl;
                    cout << "|-----------|-----------|------|------|-----|" << endl;
                }
                int w = 0, f = 0, s = 0, weight = Cars[i].weight, fuel = Cars[i].fuelRate, speed = Cars[i].maxSpeed;
                while (weight) { weight /= 10; w++; }
                while (fuel) { fuel /= 10; f++; }
                while (speed) { speed /= 10; s++; }
                cout << "|" << Cars[i].brand << setfill(' ') << setw(12 - strlen(Cars[i].brand)) << "|" << Cars[i].model << setfill(' ') << setw(12 - strlen(Cars[i].model)) << "|" << Cars[i].weight << setfill(' ') << setw(7 - w) << "|" << Cars[i].fuelRate << setfill(' ') << setw(7 - f) << "|" << Cars[i].maxSpeed << setfill(' ') << setw(6 - s) << "|" << endl;
                cout << "|-----------|-----------|------|------|-----|" << endl;
            }
        }
    }
    if (not flag) cout << "��� ������ � ����� ����������" << endl;
}
