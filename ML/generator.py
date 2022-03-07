import json
import random
import names

institute_name = ['Thapar Institute']
location = ['Patiala']
institute_type = ['Private/Engineering','Government/Engineering']
institute_website = []
institute_ad_email = []
state_name = ['Punjab']
courses_name = [
            "B.E./ Computer Science & Engineering",
            "B.E./ Electronics & Communication Engineering",
            "B.E./ Electronics & Instrumentation Engineering",
            "B.E./ Electrical & Electronics Engineering",
            "B.E./ Electronics & Instrumentation Engineering",
            "B.E./ Electronics & Instrumentation Engineering",
            "B.E./ Civil Engineering",
            "B.E./ Mechanical Engineering",
            "M.E./ Computer Science & Engineering",
            "M.E./ Electronics & Communication Engineering",
            "M.E./ Mechanical Engineering"
        ]

def student_construct():
    return_dict = {}
    for i in range(2):
        fname = names.get_first_name()
        lname = names.get_last_name()
        active = ''.join(random.choices(population=['true','false'],k=1))
        start_year = random.randint(2010,2022)
        sem = 8 if start_year==2017 else (random.choices(population=[2*(2022-start_year+1),2*(2022-start_year+1)-1],k=1))
        status = 'completed' if sem==8 else ''.join(random.choices(population=['ongoing','dropout'],k=1))
        new_dict = {random.randint(101910000,101919999):
            {
                "firstName": fname,
                "middleName": names.get_first_name(),
                "lastName": lname,
                "gender": ''.join(random.choices(population=['MALE','FEMALE'],weights=[0.5,0.5],k=1)),
                "category": ''.join(random.choices(population=['GEN','OBC','SC','ST','PWD'],weights=[0.4,0.2,0.15,0.15,0.1],k=1)),
                "instituteEmail": fname+lname+"_be19@thapar.edu",
                "personalEmail": fname+lname+"@gmail.com",
                "phone": random.randint(7000000000,9999999999),
                "address": {
                    "house": "#121-F Gandhi Nagar",
                    "city": "Chandigarh",
                    "state": ''.join(random.choices(population=['PUNJAB','GUJARAT','HARYANA','KARNATAKA','DELHI'],weights=[0.2,0.2,0.2,0.2,0.2],k=1)),
                    "country": "India",
                    "zip": "160012"
                },
                "course": ''.join(random.choices(population=courses_name,k=1)),
                "courseType": "Engineering",
                "isActive": active,
                "startYear": start_year,
                "endYear": start_year+4,
                "courseDuration": "4",
                "courseDurationType": "Years",
                "currentSemester": sem,
                "currentCGPA": random.uniform(5.00, 9.99),
                "totalCredits": "160",
                "totalCreditsEarned": "108",
                "courseStatus": "ongoing"
            }
        }
        return_dict.update(new_dict)
    # print(json.dumps(return_dict,indent=2))
    return return_dict
# student_construct()

def dict_construct(id,idx):
 id_name = institute_name[random.randint(0,len(institute_name))]
 ret_dic = {id_name : 
    {
        'institueName': id_name,
        'institueLocation': location[idx],
        'institueType': institute_type[idx],
        'institueWebsite': 'http://www.thapar.edu/',
        'institueAdminEmail': 'admin@thapar.edu',
        'state': state_name[idx],
        'coursesOffered': courses_name,
        'institueImage': 'https://www.thapar.edu/sites/default/files/styles/thapar_logo_style/public/logo/thapar_logo.png?itok=Q-8_5_Qz',
        'Students': []
    } 
 }
#  student_dict = {'Students': []}
 new_dict = {}
 for i in range(1):
     new_dict.update(student_construct())
 ret_dic[id]['Students'].append(new_dict)
#  print(ret_dic)
 return ret_dic

dict_gen = {}

for i in range(1):
    dict_gen.update(dict_construct(institute_name[i],i))
    # print(type(dict_gen))
    print(json.dumps(dict_gen,indent=2))


# # with open('data.json', 'w') as outfile:
# #     json.dump(dict_gen, outfile)