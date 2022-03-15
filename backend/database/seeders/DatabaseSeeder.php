<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
// use Illuminate\Database\Seeder;
namespace Database\Seeders;

use App\Models\BookEntry;
use App\Models\BookList;
use App\Models\User;
use App\Models\UserRole;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        // UserRole::truncate();
        // BookList::truncate();
        // BookEntry::truncate();
        UserRoleSeeder::truncate();
        BookListSeeder::truncate();
        BookEntrySeeder::truncate();

        $this->call([
            UserRoleSeeder::class,
            BookListSeeder::class,
            BookEntrySeeder::class,
        ]);
    }
}
