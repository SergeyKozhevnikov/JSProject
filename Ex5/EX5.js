//Курс " Javascript Fullstack Developer" и "Javascript Frontend"
//Кожевников Сергей 2024 год
//Задание 5
//Напишите аналоги Utility Types
//Придумайте собственный тип
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
/*
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
 */
//class
//abstract
var A_TObject = /** @class */ (function () {
    function A_TObject(name) {
        this.name = name;
    }
    ;
    A_TObject.prototype.getInfo = function () {
        console.log('Object 1 = ' + this.name);
    };
    return A_TObject;
}());
;
var cl_TObject = /** @class */ (function (_super) {
    __extends(cl_TObject, _super);
    function cl_TObject(name, type_obj, stereotype) {
        var _this = _super.call(this, name) || this;
        _this.type_obj = type_obj;
        _this.stereotype = stereotype;
        return _this;
    }
    cl_TObject.prototype.getInfo = function () {
        console.log('Object 2 = ' + this.name + ',' + this.type_obj + ',' + this.stereotype);
    };
    return cl_TObject;
}(A_TObject));
var _req02 = new A_TObject('TestReq10100');
_req02.getInfo();
var _req01 = new cl_TObject('TestReq10000', 'Requirement', ['ЕПС']);
_req01.getInfo();
