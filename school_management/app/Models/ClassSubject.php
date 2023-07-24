<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;

class ClassSubject extends Model
{
    use HasFactory;

    protected $table = 'class_subject';

    static public function getRecord()
    {
        $return = ClassSubject::select('class_subject.*', 'class.name as class_name', 'subject.name as subject_name', 'users.name as created_by_name')
                            ->join('subject', 'subject.id', '=', 'class_subject.class_id')
                            ->join('class', 'class.id', '=', 'class_subject.class_id')
                            ->join('users', 'users.id', '=', 'class_subject.created_by');

                            if(!empty(Request::get('class_name')))
                            {
                                $return = $return->where('class.name', 'like', '&'.Request::get('class_name').'%');
                            }

                            if(!empty(Request::get('subject_name')))
                            {
                                $return = $return->where('subject.name', 'like', '&'.Request::get('subject_name').'%');
                            }

                            if(!empty(Request::get('date')))
                            {
                                $return = $return->where('class_subject.created_at', '=', Request::get('class_name'));
                            }




        $return = $return->orderBy('class_subject.id', 'desc')
                          ->paginate(5);
        return $return;
    }

    static public function getAlreadyFirst($class_id, $subject_id)
    {
        return ClassSubject::where('class_id', '=', $class_id)->where('subject_id', '=', $subject_id)->first();
    }
}