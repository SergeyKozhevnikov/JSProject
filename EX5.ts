//Курс " Javascript Fullstack Developer" и "Javascript Frontend"
//Кожевников Сергей 2024 год
//Задание 5



//Напишите аналоги Utility Types
//Придумайте собственный тип

type TObject = {

    name:string,

    type_obj:string,

    stereotype:string[],

    notes:string,

    status:string,

    version:number,        

    author:string,  

    };

   

type Requirement = TObject & {

    CL_STS_REQ?:number,

    }

   

type Artifact = TObject & {

    CL_STS_ART?:number,

    }

   

const req01: Requirement = {

    name:'TestReq01',

    type_obj:'Requirement',

    stereotype:['EPC'],

    notes:'Тестовое требование',

    status:'Proposed',

    version:1.1,

    author:'Sergey Kozhevnikov',    

    CL_STS_REQ:1,      

    };

   

    console.log(req01.name)

   

const art01: Artifact = {

    name:'TestArt01',

    type_obj:'Artifact',

    stereotype:['EPC'],

    notes:'Тестовый артифакт ',

    status:'Proposed',

    version:1.0,

    author:'Sergey Kozhevnikov',    

    CL_STS_ART:110,    

    };

       

    console.log(art01.name)

 

//class

 

//abstract

class A_TObject{

    name:string;

    notes!: string;

    status!:string;

    version!:number;            

    author!:string;

 

    constructor(name: string){

        this.name=name;

    };

 

getInfo() :void {

    console.log('Object 1 = '+ this.name)

    }

};

 

class cl_TObject extends A_TObject {    

    private type_obj!:string;

    private stereotype!: string[];

 

constructor(name: string,type_obj:string,stereotype:string[]){

        super(name);        

        this.type_obj=type_obj;

        this.stereotype=stereotype;

    }  

 

getInfo(): void {      

        console.log('Object 2 = '+ this.name +','+ this.type_obj +','+ this.stereotype)

    }

}

 

let _req02 = new A_TObject('TestReq10100');

_req02.getInfo();

 

let _req01 = new cl_TObject('TestReq10000','Requirement',['ЕПС']);

_req01.getInfo();