<?php

namespace Database\Seeders;

use App\Models\BookList;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Http;

class BookListSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

    $response = Http::get('https://openlibrary.org/search.json?q=web');
    $sections = ['A','B','C','D','E'];

    foreach ($response->json()->docs as $book) {
        BookList::insert([
            'name' => $book->title,
            'image' => 'https://covers.openlibrary.org/b/id/'.$book->cover_i.'-M.jpg',
            'section' => $sections[rand(0,4)],
            'published_date' => $book->first_publish_year,
        ]);
    }

    }
}
