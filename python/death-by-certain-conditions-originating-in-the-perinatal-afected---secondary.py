# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"P02.9","system":"icd10"},{"code":"P00.8","system":"icd10"},{"code":"P02.7","system":"icd10"},{"code":"P00.3","system":"icd10"},{"code":"P03.1","system":"icd10"},{"code":"P03","system":"icd10"},{"code":"P01.8","system":"icd10"},{"code":"P03.9","system":"icd10"},{"code":"P03.2","system":"icd10"},{"code":"P00.2","system":"icd10"},{"code":"P01.4","system":"icd10"},{"code":"P00.5","system":"icd10"},{"code":"P03.5","system":"icd10"},{"code":"P03.8","system":"icd10"},{"code":"P01.6","system":"icd10"},{"code":"P02.4","system":"icd10"},{"code":"P01.7","system":"icd10"},{"code":"P03.4","system":"icd10"},{"code":"P00.9","system":"icd10"},{"code":"P01.2","system":"icd10"},{"code":"P01.1","system":"icd10"},{"code":"P02.5","system":"icd10"},{"code":"P02.3","system":"icd10"},{"code":"P01.3","system":"icd10"},{"code":"P01.0","system":"icd10"},{"code":"P00.0","system":"icd10"},{"code":"P01.5","system":"icd10"},{"code":"P00","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-certain-conditions-originating-in-the-perinatal-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-certain-conditions-originating-in-the-perinatal-afected---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-certain-conditions-originating-in-the-perinatal-afected---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-certain-conditions-originating-in-the-perinatal-afected---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
