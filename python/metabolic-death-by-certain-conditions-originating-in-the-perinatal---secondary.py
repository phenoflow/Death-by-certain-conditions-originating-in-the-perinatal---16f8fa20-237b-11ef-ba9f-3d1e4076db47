# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"P74","system":"icd10"},{"code":"P70.1","system":"icd10"},{"code":"P55.1","system":"icd10"},{"code":"P74.1","system":"icd10"},{"code":"P74.0","system":"icd10"},{"code":"P74.9","system":"icd10"},{"code":"P71.4","system":"icd10"},{"code":"P70","system":"icd10"},{"code":"P71.3","system":"icd10"},{"code":"P71.2","system":"icd10"},{"code":"P70.8","system":"icd10"},{"code":"P70.9","system":"icd10"},{"code":"P74.5","system":"icd10"},{"code":"P71","system":"icd10"},{"code":"P74.8","system":"icd10"},{"code":"P74.4","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-certain-conditions-originating-in-the-perinatal-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["metabolic-death-by-certain-conditions-originating-in-the-perinatal---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["metabolic-death-by-certain-conditions-originating-in-the-perinatal---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["metabolic-death-by-certain-conditions-originating-in-the-perinatal---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
