<?php

/**
 *
 * webapp/plugins/insightsgenerator/tests/TestOfDiversifyLinksInsight.php
 *
 * LICENSE:
 *
 * This file is part of ThinkUp (http://thinkup.com).
 *
 * ThinkUp is free software: you can redistribute it and/or modify it under the terms of the GNU General Public
 * License as published by the Free Software Foundation, either version 2 of the License, or (at your option) any
 * later version.
 *
 * ThinkUp is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with ThinkUp.  If not, see
 * <http://www.gnu.org/licenses/>.
 *
 *
 * TestOfDiversifyLinks
 *
 * Tests the diversify links Insight.
 *
 * Copyright (c) Gareth Brady
 *
 * @author Gareth Brady gareth.brady92@gmail.com
 * @license http://www.gnu.org/licenses/gpl.html
 * @copyright 2014 Gareth Brady
 */

require_once dirname(__FILE__) . '/../../../../tests/init.tests.php';
require_once THINKUP_WEBAPP_PATH.'_lib/extlib/simpletest/autorun.php';
require_once THINKUP_WEBAPP_PATH.'_lib/extlib/simpletest/web_tester.php';
require_once THINKUP_ROOT_PATH. 'webapp/plugins/insightsgenerator/model/class.InsightPluginParent.php';
require_once THINKUP_ROOT_PATH. 'webapp/plugins/insightsgenerator/insights/diversifylinks.php';

class TestOfDiversifyLinksInsight extends ThinkUpInsightUnitTestCase {

    public function setUp(){
        parent::setUp();
    }

    public function tearDown() {
        parent::tearDown();
    }

    public function testConstructor() {
        $insight_plugin = new DiversifyLinksInsight();
        $this->assertIsA($insight_plugin, 'DiversifyLinksInsight');
      }

    public function testLessThan5Links() {
        $insight_dao = DAOFactory::getDAO('InsightDAO');
        $builders = array();

        $days_ago_3 = date('Y-m-d H:i:s', strtotime('-3 days'));

        $builders[] = FixtureBuilder::build('posts', array('id'=>137, 'post_id'=>137, 'author_user_id'=>7612345,
        'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
        'in_reply_to_user_id' => NULL,'in_retweet_of_post_id' => NULL,
        'network'=>'twitter', 'post_text'=>'This is an old post http://example.com/1 with a link.', 'source'=>'web',
        'pub_date'=>$days_ago_3, 'reply_count_cache'=>0, 'is_protected'=>0));
        $builders[] = FixtureBuilder::build('links', array('url'=>'http://example.com/1',
        'title'=>'Link 1', 'post_key'=>137, 'expanded_url'=>'http://example.com/1', 'error'=>'', 'image_src'=>''));

        $instance = new Instance();
        $instance->id = 10;
        $instance->network_user_id = 7612345;
        $instance->network_username = 'testeriffic';
        $instance->network = 'twitter';
        $insight_plugin = new DiversifyLinksInsight();
        $insight_plugin->generateInsight($instance, null, $posts, 3);

        $today = date('Y-m-d');
        $result = $insight_dao->getInsight('diversify_links_weekly', 10, $today);
        $this->assertNull($result);

        $today = date('Y-m-d');
        $result = $insight_dao->getInsight('diversify_links_monthly', 10, $today);
        $this->assertNull($result);
    }

    public function testPopularUrlUnder50Links() {
        $insight_dao = DAOFactory::getDAO('InsightDAO');
        $post_builders = array();

        $days_ago_3 = date('Y-m-d H:i:s', strtotime('-3 days'));

        $builders[] = FixtureBuilder::build('posts', array('id'=>137, 'post_id'=>137, 'author_user_id'=>7612345,
        'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
        'in_reply_to_user_id' => NULL,'in_retweet_of_post_id' => NULL,
        'network'=>'twitter', 'post_text'=>'This is an old post http://example1.com/1 with a link.', 'source'=>'web',
        'pub_date'=>$days_ago_3, 'reply_count_cache'=>0, 'is_protected'=>0));
        $builders[] = FixtureBuilder::build('links', array('url'=>'http://example1.com/1',
        'title'=>'Link 1', 'post_key'=>137, 'expanded_url'=>'http://example1.com/1', 'error'=>'', 'image_src'=>''));

        $builders[] = FixtureBuilder::build('posts', array('id'=>138, 'post_id'=>138, 'author_user_id'=>7612345,
        'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
        'in_reply_to_user_id' => NULL,'in_retweet_of_post_id' => NULL,
        'network'=>'twitter', 'post_text'=>'This is an old post http://example1.com/1 with a link.', 'source'=>'web',
        'pub_date'=>$days_ago_3, 'reply_count_cache'=>0, 'is_protected'=>0));
        $builders[] = FixtureBuilder::build('links', array('url'=>'http://example1.com/1',
        'title'=>'Link 1', 'post_key'=>138, 'expanded_url'=>'http://example1.com/1', 'error'=>'', 'image_src'=>''));

        $builders[] = FixtureBuilder::build('posts', array('id'=>139, 'post_id'=>139, 'author_user_id'=>7612345,
        'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
        'in_reply_to_user_id' => NULL,'in_retweet_of_post_id' => NULL,
        'network'=>'twitter', 'post_text'=>'This is an old post http://example1.com/1 with a link.', 'source'=>'web',
        'pub_date'=>$days_ago_3, 'reply_count_cache'=>0, 'is_protected'=>0));
        $builders[] = FixtureBuilder::build('links', array('url'=>'http://example1.com/1',
        'title'=>'Link 1', 'post_key'=>139, 'expanded_url'=>'http://example1.com/1', 'error'=>'', 'image_src'=>''));

        $builders[] = FixtureBuilder::build('posts', array('id'=>150, 'post_id'=>150, 'author_user_id'=>7612345,
        'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
        'in_reply_to_user_id' => NULL,'in_retweet_of_post_id' => NULL,
        'network'=>'twitter', 'post_text'=>'This is an old post http://example1.com/1 with a link.', 'source'=>'web',
        'pub_date'=>$days_ago_3, 'reply_count_cache'=>0, 'is_protected'=>0));
        $builders[] = FixtureBuilder::build('links', array('url'=>'http://example1.com/1',
        'title'=>'Link 1', 'post_key'=>150, 'expanded_url'=>'http://example1.com/1', 'error'=>'', 'image_src'=>''));

        $builders[] = FixtureBuilder::build('posts', array('id'=>140, 'post_id'=>140, 'author_user_id'=>7612345,
        'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
        'in_reply_to_user_id' => NULL,'in_retweet_of_post_id' => NULL,
        'network'=>'twitter', 'post_text'=>'This is an old post http://example2.com/1 with a link.', 'source'=>'web',
        'pub_date'=>$days_ago_3, 'reply_count_cache'=>0, 'is_protected'=>0));
        $builders[] = FixtureBuilder::build('links', array('url'=>'http://example2.com/1',
        'title'=>'Link 1', 'post_key'=>140, 'expanded_url'=>'http://example2.com/1', 'error'=>'', 'image_src'=>''));

        $builders[] = FixtureBuilder::build('posts', array('id'=>141, 'post_id'=>141, 'author_user_id'=>7612345,
        'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
        'in_reply_to_user_id' => NULL,'in_retweet_of_post_id' => NULL,
        'network'=>'twitter', 'post_text'=>'This is an old post http://example2.com/1 with a link.', 'source'=>'web',
        'pub_date'=>$days_ago_3, 'reply_count_cache'=>0, 'is_protected'=>0));
        $builders[] = FixtureBuilder::build('links', array('url'=>'http://example2.com/1',
        'title'=>'Link 1', 'post_key'=>141, 'expanded_url'=>'http://example2.com/1', 'error'=>'', 'image_src'=>''));

        $builders[] = FixtureBuilder::build('posts', array('id'=>142, 'post_id'=>142, 'author_user_id'=>7612345,
        'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
        'in_reply_to_user_id' => NULL,'in_retweet_of_post_id' => NULL,
        'network'=>'twitter', 'post_text'=>'This is an old post http://example2.com/1 with a link.', 'source'=>'web',
        'pub_date'=>$days_ago_3, 'reply_count_cache'=>0, 'is_protected'=>0));
        $builders[] = FixtureBuilder::build('links', array('url'=>'http://example2.com/1',
        'title'=>'Link 1', 'post_key'=>142, 'expanded_url'=>'http://example2.com/1', 'error'=>'', 'image_src'=>''));

        $builders[] = FixtureBuilder::build('posts', array('id'=>143, 'post_id'=>143, 'author_user_id'=>7612345,
        'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
        'in_reply_to_user_id' => NULL,'in_retweet_of_post_id' => NULL,
        'network'=>'twitter', 'post_text'=>'This is an old post http://example3.com/1 with a link.', 'source'=>'web',
        'pub_date'=>$days_ago_3, 'reply_count_cache'=>0, 'is_protected'=>0));
        $builders[] = FixtureBuilder::build('links', array('url'=>'http://example3.com/1',
        'title'=>'Link 1', 'post_key'=>143, 'expanded_url'=>'http://example3.com/1', 'error'=>'', 'image_src'=>''));
        $builders[] = FixtureBuilder::build('posts', array('id'=>144, 'post_id'=>144, 'author_user_id'=>7612345,
        'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
        'in_reply_to_user_id' => NULL,'in_retweet_of_post_id' => NULL,
        'network'=>'twitter', 'post_text'=>'This is an old post http://example3.com/1 with a link.', 'source'=>'web',
        'pub_date'=>date('Y-m-d H:i:s', strtotime('-2 weeks')), 'reply_count_cache'=>0, 'is_protected'=>0));
        $builders[] = FixtureBuilder::build('links', array('url'=>'http://example3.com/1',
        'title'=>'Link 1', 'post_key'=>144, 'expanded_url'=>'http://example3.com/1', 'error'=>'', 'image_src'=>''));

        TimeHelper::setTime(3);
        $instance = new Instance();
        $instance->id = 10;
        $instance->network_user_id = 7612345;
        $instance->network_username = 'testeriffic';
        $instance->network = 'twitter';
        $insight_plugin = new DiversifyLinksInsight();
        $insight_plugin->generateInsight($instance, null, $posts, 3);
        $today = date('Y-m-d');

        $result = $insight_dao->getInsight('diversify_links_monthly', 10, $today);
        $this->assertNotEqual(false, strpos($result->related_data, '{"c":[{"v":"example1.com"},{"v":4}]}'));
        $this->assertNotEqual(false, strpos($result->related_data, '{"c":[{"v":"example2.com"},{"v":3}]}'));
        $this->assertNotEqual(false, strpos($result->related_data, '{"c":[{"v":"example3.com"},{"v":2}]}'));
        $text = "Looks like @testeriffic's most shared site last month";
        $text .= " was <a href='http://example1.com'>example1.com.</a>";
        $this->assertEqual($result->text,$text);

        $result->id = 1;
        $this->debug($this->getRenderedInsightInHTML($result));
        $this->debug($this->getRenderedInsightInEmail($result));
    }

    public function testPopularUrlOver50Links() {
        $insight_dao = DAOFactory::getDAO('InsightDAO');
        $post_builders = array();

        $days_ago_3 = date('Y-m-d H:i:s', strtotime('-3 days'));

        for($i = 137; $i <= 162; $i++) {
            $builders[] = FixtureBuilder::build('posts', array('id'=>$i, 'post_id'=>$i, 'author_user_id'=>7612345,
            'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
            'in_reply_to_user_id' => NULL, 'in_retweet_of_post_id' => NULL,
            'network'=>'twitter', 'post_text'=>'This is an old post http://example1.com/1 with a link.','source'=>'web',
            'pub_date'=>date('Y-m-d H:i',strtotime("-$i minutes")), 'reply_count_cache'=>0, 'is_protected'=>0));
            $builders[] = FixtureBuilder::build('links', array('url'=>'http://example1.com/1',
            'title'=>'Link 1', 'post_key'=>$i, 'expanded_url'=>'http://example1.com/1', 'error'=>'', 'image_src'=>''));
        }

        for($i = 163; $i <= 186; $i++) {
            $builders[] = FixtureBuilder::build('posts', array('id'=>$i, 'post_id'=>$i, 'author_user_id'=>7612345,
            'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
            'in_reply_to_user_id' => NULL, 'in_retweet_of_post_id' => NULL,
            'network'=>'twitter', 'post_text'=>'This is an old post http://example2.com/1 with a link.','source'=>'web',
            'pub_date'=>date('Y-m-d H:i',strtotime("-$i minutes")), 'reply_count_cache'=>0, 'is_protected'=>0));
            $builders[] = FixtureBuilder::build('links', array('url'=>'http://example2.com/1',
            'title'=>'Link 1', 'post_key'=>$i, 'expanded_url'=>'http://example2.com/1', 'error'=>'', 'image_src'=>''));
        }

        for($i = 189; $i <= 214; $i++) {
            $builders[] = FixtureBuilder::build('posts', array('id'=>$i, 'post_id'=>$i, 'author_user_id'=>7612345,
            'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
            'in_reply_to_user_id' => NULL, 'in_retweet_of_post_id' => NULL,
            'network'=>'twitter', 'post_text'=>'This is an old post http://example3.com/1 with a link.','source'=>'web',
            'pub_date'=>date('Y-m-d H:i',strtotime("-$i minutes")), 'reply_count_cache'=>0, 'is_protected'=>0));
            $builders[] = FixtureBuilder::build('links', array('url'=>'http://example3.com/1',
            'title'=>'Link 1', 'post_key'=>$i, 'expanded_url'=>'http://example3.com/1', 'error'=>'', 'image_src'=>''));
        }



        TimeHelper::setTime(2);
        $instance = new Instance();
        $instance->id = 10;
        $instance->network_user_id = 7612345;
        $instance->network_username = 'testeriffic';
        $instance->network = 'twitter';
        $insight_plugin = new DiversifyLinksInsight();
        $insight_plugin->generateInsight($instance, null, $posts, 3);
        $today = date('Y-m-d');

        $result = $insight_dao->getInsight('diversify_links_monthly', 10, $today);
        $this->assertNotEqual(false, strpos($result->related_data, '{"c":[{"v":"example1.com"},{"v":26}]}'));
        $this->assertNotEqual(false, strpos($result->related_data, '{"c":[{"v":"example2.com"},{"v":24}]}'));
        $text = "Looks like <a href='http://example1.com'>example1.com.</a> was last month's";
        $text .= " most shared site.";
        $this->assertEqual($result->text,$text);

        $result->id = 2;
        $this->debug($this->getRenderedInsightInHTML($result));
        $this->debug($this->getRenderedInsightInEmail($result));
    }

    public function testPopularUrlOver100Links() {
        $insight_dao = DAOFactory::getDAO('InsightDAO');
        $post_builders = array();
        $days_ago_3 = date('Y-m-d H:i:s', strtotime('-3 days'));

        for($i = 137; $i <= 180; $i++) {
            $builders[] = FixtureBuilder::build('posts', array('id'=>$i, 'post_id'=>$i, 'author_user_id'=>7612345,
            'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
            'in_reply_to_user_id' => NULL, 'in_retweet_of_post_id' => NULL,
            'network'=>'twitter','post_text'=>'This is an old post http://example1.com/1 with a link.',
            'source'=>'web','pub_date'=>date('Y-m-d H:i',strtotime("-$i minutes")), 'reply_count_cache'=>0,
            'is_protected'=>0));
            $builders[] = FixtureBuilder::build('links', array('url'=>'http://example1.com/1',
            'title'=>'Link 1','post_key'=>$i,'expanded_url'=>'http://example1.com/1', 'error'=>'','image_src'=>''));
        }

        for($i = 181; $i <= 214; $i++) {
            $builders[] = FixtureBuilder::build('posts', array('id'=>$i, 'post_id'=>$i, 'author_user_id'=>7612345,
            'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
            'in_reply_to_user_id' => NULL, 'in_retweet_of_post_id' => NULL,
            'network'=>'twitter', 'post_text'=>'This is an old post http://example2.com/1 with a link.',
            'source'=>'web','pub_date'=>date('Y-m-d H:i',strtotime("-$i minutes")), 'reply_count_cache'=>0,
            'is_protected'=>0));
            $builders[] = FixtureBuilder::build('links', array('url'=>'http://example2.com/1',
            'title'=>'Link 1','post_key'=>$i,'expanded_url'=>'http://example2.com/1', 'error'=>'','image_src'=>''));
        }

        for($i = 215; $i <= 248; $i++) {
            $builders[] = FixtureBuilder::build('posts', array('id'=>$i, 'post_id'=>$i, 'author_user_id'=>7612345,
            'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
            'in_reply_to_user_id' => NULL, 'in_retweet_of_post_id' => NULL,
            'network'=>'twitter', 'post_text'=>'This is an old post http://example3.com/1 with a link.',
            'source'=>'web','pub_date'=>date('Y-m-d H:i',strtotime("-$i minutes")),
            'reply_count_cache'=>0, 'is_protected'=>0));
            $builders[] = FixtureBuilder::build('links', array('url'=>'http://example3.com/1',
            'title'=>'Link 1','post_key'=>$i,'expanded_url'=>'http://example3.com/1','error'=>'', 'image_src'=>''));
        }



        TimeHelper::setTime(1);
        $instance = new Instance();
        $instance->id = 10;
        $instance->network_user_id = 7612345;
        $instance->network_username = 'testeriffic';
        $instance->network = 'twitter';
        $insight_plugin = new DiversifyLinksInsight();
        $insight_plugin->generateInsight($instance, null, $posts, 3);
        $today = date('Y-m-d');

        $result = $insight_dao->getInsight('diversify_links_monthly', 10, $today);
        $this->assertNotEqual(false, strpos($result->related_data, '{"c":[{"v":"example1.com"},{"v":44}]}'));
        $this->assertNotEqual(false, strpos($result->related_data, '{"c":[{"v":"example2.com"},{"v":34}]}'));
        $this->assertNotEqual(false, strpos($result->related_data, '{"c":[{"v":"example3.com"},{"v":22}]}'));
        $text = "@testeriffic must like <a href='http://example1.com'>example1.com</a> because it was the site";
        $text .= " @testeriffic shared most last month.";
        $this->assertEqual($result->text,$text);

        $result->id = 3;
        $this->debug($this->getRenderedInsightInHTML($result));
        $this->debug($this->getRenderedInsightInEmail($result));
    }

    public function test50Majority() {
        $insight_dao = DAOFactory::getDAO('InsightDAO');
        $post_builders = array();

        $days_ago_3 = date('Y-m-d H:i:s', strtotime('-3 days'));

        for($i = 137; $i <= 187; $i++) {
            $builders[] = FixtureBuilder::build('posts', array('id'=>$i, 'post_id'=>$i, 'author_user_id'=>7612345,
            'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
            'in_reply_to_user_id' => NULL, 'in_retweet_of_post_id' => NULL,
            'network'=>'twitter', 'post_text'=>'This is an old post http://example1.com/1 with a link.','source'=>'web',
            'pub_date'=>$days_ago_3, 'reply_count_cache'=>0, 'is_protected'=>0));
            $builders[] = FixtureBuilder::build('links', array('url'=>'http://example1.com/1',
            'title'=>'Link 1', 'post_key'=>$i, 'expanded_url'=>'http://example1.com/1', 'error'=>'', 'image_src'=>''));
        }

        $builders[] = FixtureBuilder::build('posts', array('id'=>188, 'post_id'=>188, 'author_user_id'=>7612345,
        'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
        'network'=>'twitter', 'post_text'=>'This is an old post http://example2.com/1 with a link.', 'source'=>'web',
        'pub_date'=>$days_ago_3, 'reply_count_cache'=>0, 'is_protected'=>0));
        $builders[] = FixtureBuilder::build('links', array('url'=>'http://example2.com/1',
        'title'=>'Link 1', 'post_key'=>188, 'expanded_url'=>'http://example2.com/1', 'error'=>'', 'image_src'=>''));


        TimeHelper::setTime(1);
        $instance = new Instance();
        $instance->id = 10;
        $instance->network_user_id = 7612345;
        $instance->network_username = 'testeriffic';
        $instance->network = 'twitter';
        $insight_plugin = new DiversifyLinksInsight();
        $insight_plugin->generateInsight($instance, null, $posts, 3);

        $today = date('Y-m-d');
        $result = $insight_dao->getInsight('diversify_links_monthly', 10, $today);
        $text = "More than <b>50%</b> of the links @testeriffic shared last month went to";
        $text .= " <a href='http://example1.com'>example1.com.</a>";
        $this->assertEqual($result->text, $text);
        $related_data = 'a:1:{s:9:"bar_chart";s:134:"{"rows":[{"c":[{"v":"example1.com"}';
        $related_data .= ',{"v":51}]}],"cols":[{"type":"string","label":"Url"}';
        $related_data .= ',{"type":"number","label":"Number of Shares"}]}";}';
        $this->assertEqual($related_data, $result->related_data);

        $result->id = 4;
        $this->debug($this->getRenderedInsightInHTML($result));
        $this->debug($this->getRenderedInsightInEmail($result));
    }

    public function test100Majority() {
        $insight_dao = DAOFactory::getDAO('InsightDAO');
        $post_builders = array();

        $days_ago_3 = date('Y-m-d H:i:s', strtotime('-3 days'));

        for($i = 137; $i <= 237; $i++) {
            $builders[] = FixtureBuilder::build('posts', array('id'=>$i, 'post_id'=>$i, 'author_user_id'=>7612345,
            'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
            'in_reply_to_user_id' => NULL,'in_retweet_of_post_id' => NULL,
            'network'=>'twitter', 'post_text'=>'This is an old post http://example1.com/1 with a link.','source'=>'web',
            'pub_date'=>$days_ago_3, 'reply_count_cache'=>0, 'is_protected'=>0));
            $builders[] = FixtureBuilder::build('links', array('url'=>'http://example1.com/1',
            'title'=>'Link 1', 'post_key'=>$i, 'expanded_url'=>'http://example1.com/1', 'error'=>'', 'image_src'=>''));
        }

        $builders[] = FixtureBuilder::build('posts', array('id'=>238, 'post_id'=>238, 'author_user_id'=>7612345,
        'author_username'=>'testeriffic', 'author_fullname'=>'Twitter User', 'author_avatar'=>'avatar.jpg',
        'network'=>'twitter', 'post_text'=>'This is an old post http://example2.com/1 with a link.', 'source'=>'web',
        'pub_date'=>$days_ago_3, 'reply_count_cache'=>0, 'is_protected'=>0));
        $builders[] = FixtureBuilder::build('links', array('url'=>'http://example2.com/1',
        'title'=>'Link 1', 'post_key'=>238, 'expanded_url'=>'http://example2.com/1', 'error'=>'', 'image_src'=>''));


        TimeHelper::setTime(2);
        $instance = new Instance();
        $instance->id = 10;
        $instance->network_user_id = 7612345;
        $instance->network_username = 'testeriffic';
        $instance->network = 'twitter';
        $insight_plugin = new DiversifyLinksInsight();
        $insight_plugin->generateInsight($instance, null, $posts, 3);

        $today = date('Y-m-d');
        $result = $insight_dao->getInsight('diversify_links_monthly', 10, $today);
        $related_data = 'a:1:{s:9:"bar_chart";s:135:"{"rows":[{"c":[{"v":"example1.com"}';
        $related_data .= ',{"v":100}]}],"cols":[{"type":"string","label":"Url"}';
        $related_data .= ',{"type":"number","label":"Number of Shares"}]}";}';
        $text = "Over <b>50%</b> of the links @testeriffic shared last month went to";
        $text .= " <a href='http://example1.com'>example1.com.</a>";
        $this->assertEqual($result->text, $text);
        $this->assertEqual($related_data, $result->related_data);

        $result->id = 52;
        $this->debug($this->getRenderedInsightInHTML($result));
        $this->debug($this->getRenderedInsightInEmail($result));

        TimeHelper::setTime(3);
        $instance = new Instance();
        $instance->id = 10;
        $instance->network_user_id = 7612345;
        $instance->network_username = 'testeriffic';
        $instance->network = 'twitter';
        $insight_plugin = new DiversifyLinksInsight();
        $insight_plugin->generateInsight($instance, null, $posts, 3);

        $today = date('Y-m-d');
        $result = $insight_dao->getInsight('diversify_links_monthly', 10, $today);
        $text = "Over <b>half</b> of the links @testeriffic shared last month came from";
        $text .= " <a href='http://example1.com'>example1.com.</a>";
        $this->assertEqual($result->text, $text);

        $result->id = 53;
        $this->debug($this->getRenderedInsightInHTML($result));
        $this->debug($this->getRenderedInsightInEmail($result));
    }
}

