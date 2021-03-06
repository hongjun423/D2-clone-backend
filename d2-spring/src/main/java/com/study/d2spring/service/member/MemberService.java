package com.study.d2spring.service.member;

import com.study.d2spring.domain.member.Member;
import com.study.d2spring.repository.member.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class MemberService {

    private final MemberRepository memberRepository;

    public List<Member> findByPostId(Long postId){
        return memberRepository.findbyPostId(postId);
    }
}
