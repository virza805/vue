<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BookEntry extends Model
{
    use HasFactory;

    protected $appends = [
        'user_name',
        'book_name',
        'book_image',
        'book_published',
        'book_section',
    ];

    public function getUserNameAttribute($value)
    {
        if(User::where('id',$this->user_id)->exists()){
            return User::where('id',$this->user_id)->first()->name;
        }
        return $this->user_id;
    }
    public function getBookNameAttribute($value)
    {
        if(BookList::where('id',$this->book_id)->exists()){
            return BookList::where('id',$this->book_id)->first()->name;
        }
        return "";
    }
    public function getBookImageAttribute($value)
    {
        if(BookList::where('id',$this->book_id)->exists()){
            return BookList::where('id',$this->book_id)->first()->image;
        }
        return "";
    }
    public function getBookPublishedAttribute($value)
    {
        if(BookList::where('id',$this->book_id)->exists()){
            return BookList::where('id',$this->book_id)->first()->published_data;
        }
        return "";
    }
    public function getBookSectionAttribute($value)
    {
        if(BookList::where('id',$this->book_id)->exists()){
            return BookList::where('id',$this->book_id)->first()->section;
        }
        return "";
    }
}
